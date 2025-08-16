{ pkgs, ... }:

{
  # services.displayManager.sddm = {
  #   enable = true;
  #   wayland.enable = true;
  # };

  # services.displayManager = {
  #   defaultSession = "niri";
  #   autoLogin = {
  #     enable = true;
  #     user = "liqihao";
  #   };
  # };

  programs = {
    hyprland = {
      enable = true;
      package = pkgs.unstable.hyprland;
    };
    niri = {
      enable = true;
      package = pkgs.unstable.niri;
    };
  };

  hardware.graphics.enable = true;

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
  ];

  virtualisation.waydroid.enable = true;

  programs = {
    dankMaterialShell.greeter = {
      enable = true;
      compositor.name = "niri";
      quickshell.package = pkgs.unstable.quickshell;
    };
    _1password-gui = {
      enable = true;
      package = pkgs.unstable._1password-gui;
      polkitPolicyOwners = [ "liqihao" ];
    };
    _1password.enable = true;
  };

  environment.etc = {
    "1password/custom_allowed_browsers" = {
      text = ''
        zen
        .zen-wrapped
      '';
      mode = "0755";
    };
  };
}
