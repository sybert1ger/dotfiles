function backup --argument name
    if test -f $name
        cp $name $namei.(date +"%Y%m%d_%H%M%S").bak
    else if test -d $name
        set name (string replace --regex '/$' '' "$name")
        cp -r $name $name.(date +"%Y%m%d_%H%M%S").bak
    else
        echo "Invalid file or directory type."
    end
end
