function every
    while read -La args
        $argv $args || return 1
    end
end
