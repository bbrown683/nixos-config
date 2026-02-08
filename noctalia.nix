{
  services.noctalia-shell.enable = true;

  # Optional services
  #services.tuned.enable = true;
  #services.upower.enable = true;
 
  # Enable a greeter
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
