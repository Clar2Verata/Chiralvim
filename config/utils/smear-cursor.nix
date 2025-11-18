{ lib, config, ... }:
{
  options = {
    smear-cursor.enable = lib.mkEnableOption "Enable smear-cursor module";
  };
  config = lib.mkIf config.smear-cursor.enable {
      plugins.smear-cursor = {
        enable = true;
        settings = {
          cursor_color = "#ff2885";
          stiffness = 0.4;
          trailing_stiffness = 0.2;
          trailing_exponent = 2;
          hide_target_hack = false; 
        };
      };
  };
}
