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
          enable_italic = true;
          cursor = "yellow";
          transparent_background = 0;
          float_style = "dim";
          current_word = "italic";
        };
    };
  };
}
