return function(shared)
    hl.on("hyprland.start", function()
        hl.exec_cmd(shared.terminal)
        hl.exec_cmd("nm-applet")
        hl.exec_cmd("waybar & hyprpaper & dunst ")
    end)

    hl.config({
        exec_once = {"[silent] spotify"},
    })

    hl.window_rule({ match = { class = "^(spotify)$" }, workspace = "special:spotify" })

    hl.env("XCURSOR_SIZE", "24")
    hl.env("HYPRCURSOR_SIZE", "24")
end
