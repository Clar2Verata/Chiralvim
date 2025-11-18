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
          stiffness = 0.3;
          trailing_stiffness = 0.1;
          trailing_exponent = 3;
          hide_target_hack = false; 
        };
      };
  };
}
