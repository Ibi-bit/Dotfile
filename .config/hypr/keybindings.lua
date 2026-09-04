return function(shared)
    local mainMod = shared.mainMod

    hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(shared.menu))
    hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(shared.terminal))
    hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(shared.fileManager))
    hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("xdg-open https://"))

    hl.bind("CTRL + ALT + Delete", hl.dsp.exit())
    hl.bind(mainMod .. " + Q", hl.dsp.window.close())
    hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.kill())
    hl.bind("CTRL + ALT + L", hl.dsp.exec_cmd("hyprlock"))
    hl.bind("CTRL + ALT + P", hl.dsp.exec_cmd("wlogout"))

    hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }))
    hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }))
    hl.bind(mainMod .. " + SPACE", hl.dsp.window.float({ action = "toggle" }))
    hl.bind(mainMod .. " + ALT + SPACE", hl.dsp.exec_cmd("hyprctl dispatch workspaceopt allfloat"))
    hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
    hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

    hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
    hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd("grimblast copy area"))
    hl.bind("ALT + Print", hl.dsp.exec_cmd("grimblast copy active"))
    hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("grimblast --freeze copy area"))

    hl.bind("ALT + Tab", function()
        hl.dispatch(hl.dsp.window.cycle_next())
        hl.dispatch(hl.dsp.window.bring_to_top())
    end)

    hl.bind("CTRL + ALT + BackSpace", hl.dsp.exit(0), { locked = true })
    hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({ x = -50, y = 0, relative = true }), { repeating = true })
    hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 50, y = 0, relative = true }), { repeating = true })
    hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -50, relative = true }), { repeating = true })
    hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 50, relative = true }), { repeating = true })

    hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.move({ direction = "left" }))
    hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.move({ direction = "right" }))
    hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.move({ direction = "up" }))
    hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.move({ direction = "down" }))

    hl.bind(mainMod .. " + ALT + left", hl.dsp.window.swap({ direction = "left" }))
    hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "right" }))
    hl.bind(mainMod .. " + ALT + up", hl.dsp.window.swap({ direction = "up" }))
    hl.bind(mainMod .. " + ALT + down", hl.dsp.window.swap({ direction = "down" }))

    hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
    hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
    hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
    hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

    hl.bind(mainMod .. " + G", hl.dsp.group.toggle())
    hl.bind(mainMod .. " + Tab", hl.dsp.group.next())
    hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.group.prev())
    hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.move({ into_group = "left" }))
    hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.move({ into_group = "right" }))
    hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.move({ out_of_group = true }))

    hl.bind(mainMod .. " + U", hl.dsp.workspace.toggle_special("scratch"))
    hl.bind(mainMod .. " + SHIFT + U", hl.dsp.window.move({ workspace = "special:scratch" }))
    hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("spotify"))
    hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:spotify" }))

    for i = 1, 10 do
        local key = i % 10
        hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
        hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, follow = true }))
        hl.bind(mainMod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
    end

    hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
    hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
    hl.bind(mainMod .. " + period", hl.dsp.focus({ workspace = "e+1" }))
    hl.bind(mainMod .. " + comma", hl.dsp.focus({ workspace = "e-1" }))

    hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
    hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

    hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
    hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
    hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
    hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })
    hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
    hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

    hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
    hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
    hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
end
