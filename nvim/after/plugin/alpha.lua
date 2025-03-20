local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- 🔥 Large 3D ASCII Art "HINDU"
dashboard.section.header.val = {
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[ ██╗  ██╗██╗███╗   ██╗██████╗  ██╗   ██╗ ]],
    [[ ██║  ██║██║████╗  ██║██╔══██╗ ██║   ██║ ]],
    [[ ███████║██║██╔██╗ ██║██║  ██║ ██║   ██║ ]],
    [[ ██╔══██║██║██║╚██╗██║██║  ██║ ██║   ██║ ]],
    [[ ██║  ██║██║██║ ╚████║██████╔╝ ╚██████╔╝ ]],
    [[ ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝   ╚═════╝  ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
    [[                                         ]],
}

-- Remove all other sections (buttons, footer)
dashboard.section.buttons.val = {}
dashboard.section.footer.val = {}

-- Set up Alpha
alpha.setup(dashboard.config)
