{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    wl-clipboard # optional: provide complete clipboard API (used by some terminal apps)
  ];

  programs.niri.enable = true;
  security.polkit.enable = true; # polkit
  services.gnome.gnome-keyring.enable = true; # secret service
  hardware.bluetooth.enable = true;
  services.tuned.enable = true;
  services.upower.enable = true;
  programs.regreet.enable = true;

  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "${pkgs.niri}/bin/niri";
        user = "ben";
      };
      default_session = initial_session;
    };    
  };

}
