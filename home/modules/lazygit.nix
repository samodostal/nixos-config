{
  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        showBottomLine = false;
      };
      os = {
        editPreset = "nvim-remote";
      };
      quitOnTopLevelReturn = true;
    };
  };
}
