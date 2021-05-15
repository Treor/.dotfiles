-- If LuaRocks is installed, make sure that packages installed through it are
-- found (e.g. lgi). If LuaRocks is not installed, do nothing.
pcall(require, "luarocks.loader")
-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")

require('configuration.client')
_G.root.keys(require('configuration.keys.global'))
-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = tostring(err) })
        in_error = false
    end)
end
-- }}}

--beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")
beautiful.init("/home/treor/.config/awesome/themes/xresources/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "kitty"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.

-- Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    awful.layout.suit.spiral.dwindle,
    awful.layout.suit.fair,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    --awful.layout.suit.tile.left,
    --awful.layout.suit.tile.bottom,
    --awful.layout.suit.tile.top,
    --awful.layout.suit.fair.horizontal,
    --awful.layout.suit.spiral,
    --awful.layout.suit.magnifier,
    --awful.layout.suit.corner.nw,
    -- awful.layout.suit.corner.ne,
    -- awful.layout.suit.corner.sw,
    -- awful.layout.suit.corner.se,
}
-- }}}

-- {{{ Menu
-- Create a launcher widget and a main menu
myawesomemenu = {
   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "manual", terminal .. " -e man awesome" },
   { "edit config", editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal }
                                  }
                        })

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

-- Keyboard map indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()


-- Writes a string representation of the current layout in a textbox widget
function updatelayoutbox(l, s)
    local screen = s or 1
    l.text = beautiful["layout_txt_" .. awful.layout.getname(awful.layout.get(screen))]
end

-- {{{ Wibar
-- Create a textclock widget
clock = wibox.widget({
    widget = wibox.widget.textclock('%H:%M  '),
})
date = wibox.widget({
    widget = wibox.widget.textclock('%A, %d %B '),
})
mytextclock = wibox.widget({
    {
        layout = wibox.container.margin,
    },
    --    {
    --widget = date,
    --},
    {
        widget = clock,
    },
    layout = wibox.layout.fixed.horizontal,
})

mysystray = wibox.widget {
                                      wibox.widget.systray(),
                                      left   = 4,
                                      top    = 4,
                                      bottom = 4,
                                      right  = 4,
                                      widget = wibox.container.margin,
                                  }

-- Create a wibox for each screen and add it
local taglist_buttons = gears.table.join(
                    awful.button({ }, 1, function(t) t:view_only() end),
                    awful.button({ modkey }, 1, function(t)
                                              if client.focus then
                                                  client.focus:move_to_tag(t)
                                              end
                                          end),
                    awful.button({ }, 3, awful.tag.viewtoggle),
                    awful.button({ modkey }, 3, function(t)
                                              if client.focus then
                                                  client.focus:toggle_tag(t)
                                              end
                                          end),
                    awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
                    awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
                )

local tasklist_buttons = gears.table.join(
                     awful.button({ }, 1, function (c)
                                              if c == client.focus then
                                                  c.minimized = true
                                              else
                                                  c:emit_signal(
                                                      "request::activate",
                                                      "tasklist",
                                                      {raise = true}
                                                  )
                                              end
                                          end),
                     awful.button({ }, 3, function()
                                              awful.menu.client_list({ theme = { width = 250 } })
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                          end))

local function set_wallpaper(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
--screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    --awful.spawn.with_shell("hsetroot -add '#FFC0CB' -add '#3D4C5F' -gradient 0")
    awful.spawn.with_shell("hsetroot -add '#F48FB1' -add '#323F4E' -gradient 0")
    --set_wallpaper(s)

    -- Each screen has its own tag table.
    awful.tag({ "", "", "", "", ""}, s, awful.layout.layouts[1])

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = 25 })

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = wibox.widget {
        awful.widget.layoutbox(),
        left = 4,
        top = 4,
        bottom = 4,
        right = 4,
        widget = wibox.container.margin,
    }

    s.txtlayoutbox = wibox.widget.textbox()
    s.txtlayoutbox.text = beautiful["layout_txt_" .. awful.layout.getname(awful.layout.get(s))] 
    awful.tag.attached_connect_signal(s, "property::selected", function ()
        updatelayoutbox(s.txtlayoutbox, s) 
    end)
    awful.tag.attached_connect_signal(s, "property::layout", function ()
        updatelayoutbox(s.txtlayoutbox, s) 
    end)

    s.txtlayoutbox:buttons(gears.table.join(
                            awful.button({ }, 1, function () awful.layout.inc( 1) end),
                            awful.button({ }, 3, function () awful.layout.inc(-1) end),
                            awful.button({ }, 4, function () awful.layout.inc( 1) end),
                            awful.button({ }, 5, function () awful.layout.inc(-1) end)))

        s.mytaglist = wibox.widget {
        awful.widget.taglist {
            screen  = s,
            filter  = awful.widget.taglist.filter.all,
            buttons = taglist_buttons,
            font = beautiful.iconfont,
        },
        left   = 4,
        top    = 4,
        bottom = 4,
        right  = 4,
        widget = wibox.container.margin,
    }
    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
        screen   = s,
        filter   = awful.widget.tasklist.filter.currenttags,
        buttons  = tasklist_buttons,
        style    = {
            shape_border_width = 5,
            shape_border_color = '#777777',
        },
        layout   = {
            spacing = 0,
            max_widget_size = 250,
            layout  = wibox.layout.flex.horizontal
        },
        -- Notice that there is *NO* wibox.wibox prefix, it is a template,
        -- not a widget instance.
        widget_template = {
            {
                {
                    {
                        max_value = 1,
                        value = 1,
                        border_width = 0,
                        color = beautiful.fg_focus,
                        forced_height = 1,
                        widget = wibox.widget.progressbar,

                    },
                    {
                        {
                            {
                                {
                                    id     = 'icon_role',
                                    widget = wibox.widget.imagebox,

                                },
                                left = 4,
                                right = 4,
                                top = 3,
                                bottom = 4,
                                widget  = wibox.container.margin,
                            },
                            {
                                id = 'text_role',
                                widget = wibox.widget.textbox,
                            },
                            --forced_height = beautiful.barHeight -2,
                            forced_height = 23,
                            layout = wibox.layout.fixed.horizontal,
                        },
                        right = 2,
                        widget  = wibox.container.margin,

                    },
                    layout = wibox.layout.align.vertical,
                },
                id            = 'background_role',
                widget        = wibox.container.background,
            },
            left = 2,
            right = 2,
            widget = wibox.container.margin,

        },
    }



    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --mylauncher,
            s.mytaglist,
            s.mylayoutbox,
            --s.txtlayoutbox,
            s.mypromptbox,
        },
        --nil,
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            mykeyboardlayout,
            mysystray,
            mytextclock,
            --s.mylayoutbox,
        },
    }
end)
-- }}}

-- {{{ Mouse bindings
root.buttons(gears.table.join(
    --awful.button({ }, 3, function () mymainmenu:toggle() end),
    --awful.button({ }, 4, awful.tag.viewnext),
    --awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
_G.client.connect_signal("manage", function (c)
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- if not awesome.startup then awful.client.setslave(c) end

    if awesome.startup
      and not c.size_hints.user_position
      and not c.size_hints.program_position then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

-- Add a titlebar if titlebars_enabled is set to true in the rules.
_G.client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = gears.table.join(
        awful.button({ }, 1, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.move(c)
        end),
        awful.button({ }, 3, function()
            c:emit_signal("request::activate", "titlebar", {raise = true})
            awful.mouse.client.resize(c)
        end)
    )

    awful.titlebar(c) : setup {
        { -- Left
            awful.titlebar.widget.iconwidget(c),
            buttons = buttons,
            layout  = wibox.layout.fixed.horizontal
        },
        { -- Middle
            { -- Title
                align  = "center",
                widget = awful.titlebar.widget.titlewidget(c)
            },
            buttons = buttons,
            layout  = wibox.layout.flex.horizontal
        },
        { -- Right
            awful.titlebar.widget.floatingbutton (c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.stickybutton   (c),
            awful.titlebar.widget.ontopbutton    (c),
            awful.titlebar.widget.closebutton    (c),
            layout = wibox.layout.fixed.horizontal()
        },
        layout = wibox.layout.align.horizontal
    }
end)

-- Enable sloppy focus, so that focus follows mouse.
_G.client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::activate", "mouse_enter", {raise = false})
end)

_G.client.connect_signal("focus", function(c) c.border_color = beautiful.border_focus end)
_G.client.connect_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}
-- Autostart
