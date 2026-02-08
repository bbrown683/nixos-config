# Setup from Installer
1. Modify `disk-configuration.nix` to your desired settings. By default you should change the device and the swap size.
2. Run disko to initialize format and mount the filesystem.
    ```shell
    sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ./disk-configuration.nix
    ```
3. Tweak the host and domain name under `configuration.nix` and nixosConfigurations.<name> under `flake.nix` to your desired name.
4. Run the NixOS installer.
    ```shell
    nixos-install --flake .#<name>
    ```
5. Reboot