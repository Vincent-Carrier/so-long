function each
    if isatty
        argsplit $argv
        for arg in $largs
            $rargs $arg
        end
    else
        while read args
            $argv $args
        end
    end
end
