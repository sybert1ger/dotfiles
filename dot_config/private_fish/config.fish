if status is-interactive
    # Commands to run in interactive sessions can go here

    __fish_path

    set -g fish_prompt_pwd_dir_length 0
    set -g EXA_STANDARD_OPTIONS --long --all --group --header --icons
    set -g COLORTERM truecolor
    set -g man_bold -o magenta
    set -g man_underline -o red

    abbr -a -g vi nvim
    abbr -a -g vim nvim

    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    __zellij_auto
end
