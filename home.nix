{ config, ... }:
{
  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "25.11";
  /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */

  home.username = "ben";
  home.homeDirectory = "/home/ben";

  # User configurations
  # For now we will define these externally.
  # We should ideally create a flake for these in the future.
  #home.file = {
  #  ".config/helix/config.toml".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/helix/config.toml";
  #  ".config/wezterm/.wezterm.lua".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/wezterm/.wezterm.lua";
  #  ".config/niri".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/niri";
  #  ".config/DankMaterialShell/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/DankMaterialShell/settings.json";
  #  ".config/noctalia/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/noctalia/settings.json";
  #  ".config/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/starship.toml";
  #  ".config/zellij/config.kdl".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/zellij/config.kdl";
  #};

  imports = [
    ./terminal.nix    
    ./desktop.nix
  ];
}
