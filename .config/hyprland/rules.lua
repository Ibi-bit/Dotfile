hl.window_rule({
    name = "float-opencv",
    match = { title = "^(Frame)$" },
    float = true,
})

local suppressMaximizeRule = hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "spotify-special",
    match = { class = "^(Spotify)$" },
    workspace = "special:spotify silent",
})

hl.on("hyprland.start", function()
    hl.exec_cmd("spotify")
    hl.exec_cmd(
        'firefox --firefox-work --new-window "https://outlook.office.com" '
        .. '-new-tab "https://teams.microsoft.com" '
        .. '-new-tab "https://gitlab.blaize.com/" '
        .. '-new-tab "https://blaizeinc.atlassian.net"'
    )
end)

hl.on("window.open", function(w)
    if w.class == "firefox-work" then
        hl.dispatch(hl.dsp.window.move({ workspace = "special:scratchpad", window = w }))
    end
end)

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})
