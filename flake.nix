{
  description = "nixpkgsHob: Set of `nixpkgs`s";

  inputs = {
    systemd253 = {
      url = "github:NixOS/nixpkgs/981538cca38685a5bb4b5794f33505bb64b520ba";
    };
  };

  outputs = inputs@{ ... }: {
    type = "nixpkgsHob";
    value = removeAttrs inputs [ "self" ];
  };
}
