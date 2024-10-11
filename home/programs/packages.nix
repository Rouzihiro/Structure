{
  pkgs,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    # DEV
    inputs.alejandra.defaultPackage.${system}
    python3
    # MEDIA
    mpv # Video
    imv # Image
    ventoy-full

    # APPS
    protonvpn-cli_2
    spotube
    keepassxc

    libreoffice
    qalculate-gtk

    vesktop
    gparted
    nautilus
    file-roller

    overskride
    pwvucontrol

    inputs.zen-browser.packages.${system}.specific
  ];
}
