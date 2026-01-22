{ inputs, pkgs, ... }:
{
  programs.scroll = {
    enable = true;
    package = inputs.scroll.packages.${pkgs.stdenv.hostPlatform.system}.scroll-git;
  };

  programs.regreet.enable = true;
  
  # Enable Pipewire for screencasting and audio server
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
  };

  environment.systemPackages = with pkgs; [
    mako
    swaybg
    wl-clipboard
  ];

  security.polkit.enable = true;
  security.pam.services.swaylock = {};
}
