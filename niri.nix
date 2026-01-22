{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wl-clipboard # optional: provide complete clipboard API (used by some terminal apps)
  ];

  programs.niri.enable = true;
  security.polkit.enable = true; # polkit
  services.gnome.gnome-keyring.enable = true; # secret service
}
