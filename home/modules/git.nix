{
  programs.git = {
    enable = true;
    userName = "samodostal";
    userEmail = "samuel.dostal.sk@gmail.com";
    extraConfig = {
      pull = {
        rebase = true;
      };
    };
  };
}
