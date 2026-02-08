{ inputs, nixpkgs, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    alacritty # So we can tweak the initial niri configuration.
    xwayland-satellite
    wl-clipboard # optional: provide complete clipboard API (used by some terminal apps)
  ];

  nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programs.niri = {
    enable = true;
    package = pkgs.niri-unstable;
    #useNautilus = false;
  };
  security.polkit.enable = true; # polkit
  services.gnome.gnome-keyring.enable = true; # secret service
}
