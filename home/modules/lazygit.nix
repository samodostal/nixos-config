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
      git = {
        paging = {
          externalDiffCommand = "difft --color=always";
        };
      };
      quitOnTopLevelReturn = true;
    };
  };
}
