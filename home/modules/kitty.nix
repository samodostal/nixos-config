{
  programs.kitty = {
    enable = true;
    settings = {
      window_padding_width = 0;
      hide_window_decorations = true;
    };
    keybindings = {
      "ctrl+plus" = "change_font_size all +2.0";
      "ctrl+minus" = "change_font_size all -2.0";
    };
  };
}
