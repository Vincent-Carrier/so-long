function txt --description 'set color' --argument color style
    switch $style
    case b
        set flag -o
    case i
        set flag -i
    case u
        set flag -u
    case d
        set flag -d
    case '-'
        set -e flag
    end
    printf "$(set_color $flag $color)%s$(set_color normal)" "$argv[3..]"
end
