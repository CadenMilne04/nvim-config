return {
	"Mofiqul/vscode.nvim", 
	name = "vscode", 
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "vscode"
        local c = require('vscode.colors').get_colors()
        require('vscode').setup({

        -- Enable transparent background
        transparent = true,

        -- Enable italic comment
        italic_comments = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Override colors (see ./lua/vscode/colors.lua)
        color_overrides = {
            vscLineNumber = '#FFFFFF',
        },

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
            -- this supports the same val table as vim.api.nvim_set_hl
            -- use colors from this colorscheme by requiring vscode.colors!
            Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
        }
    })
    -- lualine
    require('lualine').setup({
        options = {
            -- ...
            theme = 'vscode',
            -- ...
        },
    })
    --bufferline
    require("bufferline").setup({
    options = {
        buffer_close_icon = " ",
        close_command = "bdelete %d",
        close_icon = " ",
        indicator = {
          style = "icon",
          icon = " ",
        },
        left_trunc_marker = "",
        modified_icon = "●",
        offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center" } },
        right_mouse_command = "bdelete! %d",
        right_trunc_marker = "",
        show_close_icon = false,
        show_tab_indicators = true,
    },
})

    end,
}
