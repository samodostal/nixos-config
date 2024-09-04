{ pkgs, ... }: {
  programs.tmux = {
    enable = true;
    clock24 = true;
    plugins = [
      pkgs.tmuxPlugins.tokyo-night-tmux
    ];
    extraConfig = ''
      set -g @theme_enable_icons 0

      set -sg escape-time 0
      set-option -g focus-events on

      unbind C-b
      set-option -g prefix C-u
      bind-key C-u send-prefix

      set -g base-index 1
      setw -g pane-base-index 1

      setw -g mouse on

      set-window-option -g mode-keys vi
      set-option -g renumber-windows on

      set -gq allow-passthrough on
      set -g visual-activity off

      bind-key b choose-tree -swZ
      # bind-key f display-popup -w 80% -h 80% $HOME/.local/bin/tmux-cht.sh
      # bind-key n display-popup -w 60% -h 60% -E $HOME/.local/bin/tmux-project.sh
      bind-key t switch-client -l

      # bind-key -r p attach-session -t main
      # bind-key -r . attach-session -t dotfiles
      # bind-key -r , attach-session -t notes
      # bind-key -r y attach-session -t ghci 

      # bind-key u run-shell "~/local_bin/tmux-project.sh smart_trial/webapp"
      # bind-key e run-shell "~/local_bin/tmux-project.sh smart_trial/api"
      # bind-key o run-shell "~/local_bin/tmux-project.sh freelance/aj_toto_je_umenie"

      # bind-key k run-shell "~/local_bin/hidden/smart-trial.sh"
      # bind-key j run-shell "~/local_bin/tmux-project.sh temp"

      bind-key l split-window -h
      bind-key s split-window -v

      bind-key -r J resize-pane -D 20
      bind-key -r K resize-pane -U 20
      bind-key -r H resize-pane -L 20
      bind-key -r L resize-pane -R 20

      bind-key h select-window -t 1
      bind-key m select-window -t 2
      bind-key w select-window -t 3
      bind-key v select-window -t 4
      bind-key z select-window -t 5


            is_vim="ps -o state= -o comm= -t '#{pane_tty}' | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?\.?(view|n?vim?x?)(-wrapped)?(diff)?$'"

            bind-key -n "C-h" if-shell "$is_vim" "send-keys C-h" { if -F "#{pane_at_left}" "" "select-pane -L" }
            bind-key -n "C-j" if-shell "$is_vim" "send-keys C-j" { if -F "#{pane_at_bottom}" "" "select-pane -D" }
            bind-key -n "C-k" if-shell "$is_vim" "send-keys C-k" { if -F "#{pane_at_top}" "" "select-pane -U" }
            bind-key -n "C-l" if-shell "$is_vim" "send-keys C-l" { if -F "#{pane_at_right}" "" "select-pane -R" }

            bind-key -T copy-mode-vi "C-h" if -F "#{pane_at_left}" "" "select-pane -L"
            bind-key -T copy-mode-vi "C-j" if -F "#{pane_at_bottom}" "" "select-pane -D"
            bind-key -T copy-mode-vi "C-k" if -F "#{pane_at_top}" "" "select-pane -U"
            bind-key -T copy-mode-vi "C-l" if -F "#{pane_at_right}" "" "select-pane -R"
    '';
  };
}
