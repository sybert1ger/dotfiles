function fish_prompt

    #retain last status code
    set -l last_status $status

    if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end

    set_color yellow
    printf '%s' $USER
    set_color normal
    printf ' at '


    set_color magenta
    echo -n (prompt_hostname)
    set_color normal
    printf ' in '

    set_color $fish_color_cwd
    printf '%s' (string replace -r '^~' '' (prompt_pwd)) 
    set_color normal

    # Line 2
    echo 

    test 0 = $last_status; and set_color brgreen; or set_color brred

    printf '%s%s%s ' "[" $last_status "]"
    set_color normal

    if test -n "$VIRTUAL_ENV"
        printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
    end
    set glyph '↪ '
    printf $glyph
    
    set_color normal
end
