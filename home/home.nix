{hostname, ...}: {
  imports =
    if hostname == "laptop"
    then [
      ./programs/git.nix
      ./programs/eza.nix
      ./programs/btop.nix
      ./programs/yazi.nix
      ./programs/foot.nix
      ./programs/bash.nix
      ./programs/helix.nix
      ./programs/zellij.nix
      ./programs/zoxide.nix
      ./programs/firefox.nix
      ./programs/packages.nix
      ./programs/starship.nix
      ./programs/freetube.nix
      ./programs/vscodium.nix
      ./programs/spicetify.nix
      ./programs/fastfetch.nix
      ./programs/qutebrowser.nix

      ./system/tofi.nix
      ./system/wofi.nix
      ./system/dunst.nix
      ./system/stylix.nix
      ./system/waybar.nix
      ./system/udiskie.nix
      ./system/wlogout.nix
      ./system/wlsunset.nix
      ./system/hyprland.nix
    ]
    else if hostname == "server"
    then [
      ./programs/git.nix
      ./programs/eza.nix
      ./programs/btop.nix
      ./programs/yazi.nix
      ./programs/bash.nix
      ./programs/helix.nix
      ./programs/zellij.nix
      ./programs/zoxide.nix
      ./programs/starship.nix
      ./programs/fastfetch.nix
    ]
    else [];
}
