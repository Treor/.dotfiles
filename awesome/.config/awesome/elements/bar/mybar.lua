local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")

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
                                              awful.menu.client_list({ theme = { width = 200 } })
                                          end),
                     awful.button({ }, 4, function ()
                                              awful.client.focus.byidx(1)
                                          end),
                     awful.button({ }, 5, function ()
                                              awful.client.focus.byidx(-1)
                                          end))

awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    awful.tag({ "", "", "", "", "", "", "", "", ""}, s, awful.layout.layouts[1])

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
            max_widget_size = 200,
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
        {
        layout = wibox.layout.fixed.horizontal,
        s.mytasklist, -- Middle widget
        },
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            mykeyboardlayout,
            mysystray,
            mytextclock,
            --s.mylayoutbox,
        },
    }
end)
