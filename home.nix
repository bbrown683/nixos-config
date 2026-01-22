{ config, ... }:
{
  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "25.11";
  /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */

  home.username = "ben";
  home.homeDirectory = "/home/ben";

  # User configurations
  home.file = {
    #".config/fish/config.fish".source = config.lib.file.mkOutOfStoreSymlink dotfiles/fish/config.fish;
    ".config/helix".source = config.lib.file.mkOutOfStoreSymlink dotfiles/helix;
    ".config/wezterm".source = config.lib.file.mkOutOfStoreSymlink dotfiles/wezterm;
    ".config/niri".source = config.lib.file.mkOutOfStoreSymlink dotfiles/niri;
    #".config/noctalia".source = config.lib.file.mkOutOfStoreSymlink dotfiles/noctalia;
    ".config/starship.toml".source = config.lib.file.mkOutOfStoreSymlink dotfiles/starship.toml;
    #".config/zellij".source = config.lib.file.mkOutOfStoreSymlink dotfiles/zellij;
  };
}

