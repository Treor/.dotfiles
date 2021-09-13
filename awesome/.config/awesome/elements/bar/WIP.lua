local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")

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

local update_taglist = function (item, tag, index)
    if tag.selected then
        item.bg = beautiful.taglist_text_color_focused[index]
    elseif tag.urgent then
        item.bg = beautiful.taglist_text_color_urgent[index]
    elseif #tag:clients() > 0 then
        item.bg = beautiful.taglist_text_color_occupied[index]
    else
        item.bg = beautiful.taglist_text_color_empty[index]
    end
end

local tag_colors_empty = { "#00000000", "#00000000", "#00000000", "#00000000", "#00000000", "#00000000", "#00000000", "#00000000", "#00000000", "#00000000" }

local tag_colors_urgent = { x.foreground, x.foreground, x.foreground, x.foreground, x.foreground, x.foreground, x.foreground, x.foreground, x.foreground, x.foreground }

local tag_colors_focused = {
    x.color1,
    x.color5,
    x.color4,
    x.color6,
    x.color2,
    x.color3,
    x.color1,
    x.color5,
    x.color4,
    x.color6,
}

local tag_colors_occupied = {
    x.color1.."45",
    x.color5.."45",
    x.color4.."45",
    x.color6.."45",
    x.color2.."45",
    x.color3.."45",
    x.color1.."45",
    x.color5.."45",
    x.color4.."45",
    x.color6.."45",
}

-- Helper function that updates a taglist item
local update_taglist = function (item, tag, index)
    if tag.selected then
        item.bg = tag_colors_focused[index]
    elseif tag.urgent then
        item.bg = tag_colors_urgent[index]
    elseif #tag:clients() > 0 then
        item.bg = tag_colors_occupied[index]
    else
        item.bg = tag_colors_empty[index]
    end
end

awful.screen.connect_for_each_screen(function(s)
    -- Each screen has its own tag table.
    awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}, s, awful.layout.layouts[1])

    s.mytaglist = awful.widget.taglist {
            screen  = s,
            filter  = awful.widget.taglist.filter.all,
            buttons = taglist_buttons,
            layout = {
                spacing = 10,
                spacing_widget = {
                    color  = '#00ff00',
                    shape  = gears.shape.circle,
                    widget = wibox.widget.separator,
                },
                layout = wibox.layout.flex.horizontal,
            },
            widget_template = {
                widget = wibox.container.background,
                create_callback = function(self, tag, index, _)
                    update_taglist(self, tag, index)
                end,
                update_callback = function(self, tag, index, _)
                    update_taglist(self, tag, index)
                end,
            }
    }
    -- Create the taglist wibox
    s.taglist_box = awful.wibar({
        screen = s,
        visible = true,
        ontop = false,
        type = "dock",
        position = "top",
        height = dpi(10),
        -- position = "left",
        -- width = dpi(6),
        bg = "#00000000",
    })

    s.taglist_box:setup {
        widget = s.mytaglist,
    }

end)
