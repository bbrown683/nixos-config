{ config, ... }:
{
  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "25.11";
  /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */

  home.username = "ben";
  home.homeDirectory = "/home/ben";

  # User configurations
  home.file = {
    #".config/fish".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/fish";
    ".config/helix".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/helix";
    ".config/wezterm".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/wezterm";
    ".config/niri".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/niri";
    #".config/noctalia".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/noctalia";
    #".config/zellij".source = config.lib.file.mkOutOfStoreSymlink .dotfiles/zellij;
  };
}

