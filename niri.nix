{ pkgs, home-manager, ... }:
{
  home-manager.users.ben = {
  programs.niri = {
    enable = true;
    package = pkgs.niri-unstable;
  };
  };
}
