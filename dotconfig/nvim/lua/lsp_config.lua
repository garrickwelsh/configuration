local lspconfig = require('lspconfig')
local lspinstall = require('lspinstall')

-- function to attach completion when setting up lsp
local on_attach = function(client)
    require'completion'.on_attach(client)
    require'lsp_signature'.on_attach(client)
end

-- config that activates keymaps and enables snippet support
local function make_config()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true
  return {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end

-- Configure rust-analyzer (I use an Arch package instead of LspInstall)
lspconfig.rust_analyzer.setup(make_config())

lspinstall.setup() -- important

local servers = lspinstall.installed_servers()
for _, server in pairs(servers) do
  local config = make_config()

  lspconfig[server].setup(config)
end

require('rust-tools').setup()

local compe = require('compe')

compe.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
  };

  source = {
    path = true;

    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}

local lspkind = require('lspkind')
lspkind.init({
  preset = 'codicons',
  symbol_map = {
      Text = '',
      Method = 'ƒ',
      Function = '',
      Constructor = '',
      Variable = '',
      Class = '',
      Interface = 'ﰮ',
      Module = '',
      Property = '',
      Unit = '',
      Value = '',
      Enum = '了',
      Keyword = '',
      Snippet = '﬌',
      Color = '',
      File = '',
      Folder = '',
      EnumMember = '',
      Constant = '',
      Struct = ''
    },
  })

-- vim:et ts=2 sw=2
