{
  description = "pkgss: Set of `nixpkgs`s for set of pinned `pkgs`s";

  inputs = {
    systemd253.url = "github:NixOS/nixpkgs/ac1dd9de6ce5e3040c49101f21f204744905f418";
  };

  outputs = inputs: {
    type = "nixpkgsHob";
    value = removeAttrs inputs [ "self" ];
  };
}
