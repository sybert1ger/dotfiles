function __fish_path

    if test -d ~/.local/bin    
        fish_add_path ~/.local/bin
    end
    if test -d ~/bin
        fish_add_path ~/bin
    end
end

