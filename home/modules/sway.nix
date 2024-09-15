# WIP
{ pkgs, ... }: {
  home.pointerCursor = {
    name = "Adwaita";
    package = pkgs.gnome.adwaita-icon-theme;
    size = 24;
    x11 = {
      enable = true;
      defaultCursor = "Adwaita";
    };
  };

  wayland.windowManager.sway = {
    enable = true;
    config = rec {
      modifier = "Mod1";
      terminal = "kitty";
      window = {
        titlebar = false;
        border = 0;
      };
      input = {
        "1:1:AT_Translated_Set_2_keyboard" = {
          xkb_layout = "us(dvorak),us";
          xkb_variant = ",";
          xkb_options = "grp:win_space_toggle,caps:swapescape";
        };
        "*" = {
          xkb_layout = "us";
        };
      };
      startup = [
        { command = "firefox"; }
        { command = "kitty"; }
        { command = "thunderbird"; }
        { command = "ticktick"; }
        { command = "spotify"; }
      ];
      assigns = {
        "1:www" = [{ app_id = "firefox"; }];
        "2:dev" = [{ app_id = "kitty"; }];
        "7:mail" = [{ app_id = "thunderbird"; }];
        "8:task" = [{ class = "ticktick"; }];
        "9:sptf" = [{ class = "Spotify"; }];
      };
    };
    extraConfigEarly = ''
      set $ws1 "1:www"
      set $ws2 "2:dev"
      set $ws3 "3:disp"
      set $ws4 "4:extr"
      set $ws5 "5:virt"
      set $ws6 "6:edit"
      set $ws7 "7:mail"
      set $ws8 "8:task"
      set $ws9 "9:sptf"
      set $ws0 "10:noop"
    '';
  };
}

# security.polkit.enable = true;
#
# services.greetd = {
#   enable = true;
#   settings = {
#     default_session = {
#       command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
#       user = user;
#     };
#   };
# };
#
# # services.gnome.gnome-keyring.enable = true;
# programs.sway = {
#   enable = true;
#   wrapperFeatures.gtk = true;
# };
#
# hardware.bluetooth.enable = true;
# hardware.bluetooth.powerOnBoot = true;

#   # Temporary installation of DE modules, until I get to modules for different machines
# wev
#   bemenu # launch applications
# nwg-displays # manage display
#   wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
#   dunst # notification system

# services.blueman.enable = true;
