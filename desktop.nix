{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    spotify
    vencord
  ];
  programs.firefox.enable = true;
  programs.steam.enable = true;
}
