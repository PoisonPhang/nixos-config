# NixOS Config

This repository hosts my NixOS Configuration. The configuration is a home manager NixOS module using Nix Flakes.

## Configurations

Several configurations already exist for the various computers that I use.

* `"carbon-x1-gen-8"`

* `"poisonphang-dt"`

They can be switched to by using the following command inside the root of this repository. Simply switch ` $SYSTEM_NAME` out for the desired configuration.

```sh
sudo nixos-rebuild switch --flake .#$SYSTEM_NAME
```

## Adding a new configuration

New configurations are easy to add. However, you must ensure they have a `.nix` file under `./hardware`.

For an example of adding system specific options outside the `./hardware` folder, see `./modules/xserver.nix`.
