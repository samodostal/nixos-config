{
  programs.kitty = {
    enable = true;
    settings = {
      window_padding_width = 0;
      background = "#151621";
      # hide_window_decorations = "titlebar-and-corners";
      hide_window_decorations = true;
    };
    keybindings = {
      "ctrl+0" = "change_font_size all 0";
      "ctrl+plus" = "change_font_size all +2.0";
      "ctrl+minus" = "change_font_size all -2.0";
    };
  };
}
