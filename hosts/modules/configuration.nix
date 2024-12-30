{ hostname, ... }:
{
  # ---------------------------------------------------------
  # Documentation
  # ---------------------------------------------------------

  documentation = {
    enable = false;
    doc.enable = false;
    man.enable = false;
    dev.enable = false;
    info.enable = false;
    nixos.enable = false;
  };

  # ---------------------------------------------------------
  # System
  # ---------------------------------------------------------

  system = { stateVersion = "24.11"; };
  security.pam.services.swaylock = { };

  hardware.graphics = {
    enable = true;
    # enable32Bit = true;
  };

  services = {
    chrony.enable = true;
    logind = { lidSwitch = "ignore"; lidSwitchExternalPower = if hostname == "server" then "ignore" else "suspend-then-hibernate"; };
  };

  systemd = {
    tpm2.enable = false;
    services.sertimesyncd.enable = false;
  };

  console.colors = [
    "1e1e2e" # base
    "181825" # mantle
    "313244" # surface0
    "45475a" # surface1
    "585b70" # surface2
    "cdd6f4" # text
    "f5e0dc" # rosewater
    "b4befe" # lavender
    "f38ba8" # red
    "fab387" # peach
    "f9e2af" # yellow
    "a6e3a1" # green
    "94e2d5" # teal
    "89b4fa" # blue
    "cba6f7" # mauve
    "f2cdcd" # flamingo 
  ];
}
