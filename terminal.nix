{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    fastfetch
    fd
    fzf
    helix
    ripgrep
    wezterm
    zellij
  ];
  
  programs.fish.enable = true;
  programs.git.enable = true;
  programs.starship.enable = true;
  programs.yazi.enable = true;
    
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.bat.enable = true;
}

