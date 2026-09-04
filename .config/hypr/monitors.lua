hl.monitor({
    output = "DP-2",
    mode = "preferred",
    position = "0x0",
    scale = "auto",
})

hl.monitor({
    output = "DP-1",
    mirror = "DP-2",
})

hl.monitor({
    output = "",
    mode = "preferred",
    position = "auto",
    scale = "auto",
})
