function confirm --argument prompt
    test -z "$prompt" && set prompt (txt cyan b "Are you sure?")
    while read -n1 res -P "$prompt $(txt brwhite i '(y/n)') " || return 1
        switch $res
            case y Y
                return
            case n N
                return 1
            case '*'
                continue
        end
    end
end
