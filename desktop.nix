{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bitwarden-desktop
    blender
    remmina    
    spotify
    steam
    vlc
  ];

  programs.firefox.enable = true;
  programs.mullvad-vpn.enable = true;
  programs.obs-studio.enable = true;
  #programs.obsidian.enable = true;
  programs.vesktop.enable = true;
}
