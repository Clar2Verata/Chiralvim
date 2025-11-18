{ lib, config, ... }:
{
  options = {
    nightfox.enable = lib.mkEnableOption "Enable nightfox module";
  };
  config = lib.mkIf config.nightfox.enable {
    colorschemes.nightfox = {
        enable = true;
        settings = {
          flavor = "dawnfox";
        };
    };
  };
}
