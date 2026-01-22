{ inputs, ... }:
{
  programs.dank-material-shell = {
    enable = true;
    #niri = {
    #  enableKeybinds = true;
    #  enableSpawn = true;  
    #};
    systemd = {
      enable = true;
      restartIfChanged = true;
    };
  };

  # Enable dank greeter.
  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";  # Or "hyprland" or "sway"
  };

  # Enable dank search (fuzzy finder)
  programs.dsearch = {
    enable = true;

    # Systemd service configuration
    systemd = {
      enable = true;               # Enable systemd user service
      target = "default.target";   # Start with user session
    };
  };  
}
