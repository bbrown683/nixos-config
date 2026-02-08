{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
  ];

  # Shell & Config
  programs.wezterm.enable = true;
  programs.fish.enable = true;
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };

  # Utility commands
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;  
  };

  programs.ripgrep.enable = true;
  programs.fd.enable = true;
  programs.bat.enable = true;

  # Workflow
  programs.helix = {
    enable = true;
    defaultEditor = true;
  };
  programs.git.enable = true;
  programs.yazi.enable = true;
  programs.zellij.enable = true;
}

