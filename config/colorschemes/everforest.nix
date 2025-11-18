{ lib, config, ... }:
{
  options = {
    everforest.enable = lib.mkEnableOption "Enable Everforest module";
  };
  config = lib.mkIf config.everforest.enable {
    colorschemes.everforest = {
        enable = true;
        settings = {
          background = "soft";
          enable_italic = 1;
          cursor = "yellow";
          transparent_background = 1;
          float_style = "dim";
          current_word = "italic";
        };
    };
  };
}
