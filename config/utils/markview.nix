{ config, lib, ... }:
{
  options = {
    markview.enable = lib.mkEnableOption "Enable Markview module";
  };
  config = lib.mkIf config.markview.enable {

  plugins.markview =
    let
      filetypes = [
        "latex"
        "markdown"
        "md"
        "norg"
        "org"
        "quarto"
        "rmd"
        "typst"
        "vimwiki"
      ];
    in
    {
      enable = true;
      #lazyLoad.settings.ft = filetypes;

      settings = {
        preview = {
          inherit filetypes;

          ignore_buftypes = [ ];

          };
      };
    };

  keymaps = lib.mkIf config.plugins.markview.enable [
    {
      mode = "n";
      key = "<leader>um";
      action = "<cmd>Markview toggle<CR>";
      options = {
        desc = "Toggle Markdown Preview";
      };
    }
  ];
  };
}
