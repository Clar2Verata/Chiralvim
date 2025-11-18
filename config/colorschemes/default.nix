{
  lib,
  config,
  ...
}:
{
  imports = [
    ./base16.nix
    ./catppuccin.nix
    ./rose-pine.nix
    ./nightfox.nix
    ./everforest.nix
  ];

  options = {
    colorschemes.enable = lib.mkEnableOption "Enable colorschemes module";
  };
  config = lib.mkIf config.colorschemes.enable {
    base16.enable = lib.mkDefault false;
    catppuccin.enable = lib.mkDefault false;
    rose-pine.enable = lib.mkDefault false;
    nightfox.enable = lib.mkDefault false;
    everforest.enable = lib.mkDefault true;
  };
}
