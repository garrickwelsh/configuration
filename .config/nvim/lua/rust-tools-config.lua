-- Do not run - for reference
-- RustSetInlayHints
-- RustDisableInlayHints 
-- RustToggleInlayHints 
local opts = {
    -- whether to show parameter hints with the inlay hints or not
    -- default: true
    show_parameter_hints = true,

    -- prefix for parameter hints
    -- default: "<-"
    parameter_hints_prefix = "<-",

    -- prefix for all the other hints (type, chaining)
    -- default: "=>"
    other_hints_prefix  = "=>",
}

-- set inlay hints
require('rust-tools.inlay_hints').set_inlay_hints(opts)
-- disable inlay hints
--require('rust-tools.inlay_hints').disable_inlay_hints()
-- toggle inlay hints
-- applies the opts if enabling inlay hints
require('rust-tools.inlay_hints').toggle_inlay_hints(opts)


-- Command:
-- RustRunnables
local opts = {
    -- whether to use telescope for selection menu or not
    -- default: true
    use_telescope = true
    -- rest of the opts are forwarded to telescope
}
require('rust-tools.runnables').runnables(opts)

-- Command:
-- RustExpandMacro  
require'rust-tools.expand_macro'.expand_macro()


-- this needs the experimental hoverActions capability set
-- while configuring your rust-analyzer:
local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.experimental = {}
capabilities.experimental.hoverActions = true

require'lspconfig'.rust_analyzer.setup{
    capabilities = capabilities,
}
------------------------------------------------------------------
-- Actual call
-- Command:
-- RustHoverActions 
-- Disabled causing errors
require'rust-tools.hover_actions'.hover_actions()


-- Command:
-- RustParentModule 
require'rust-tools.parent_module'.parent_module()

-- Command:
-- RustJoinLines  
require'rust-tools.join_lines'.join_lines()
