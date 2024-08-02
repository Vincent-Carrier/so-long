function partition --no-scope-shadowing --argument suffix cmd
    set -e is_$suffix not_$suffix
    for arg in $argv[3..]
        if eval $cmd $arg
            set -a is_$suffix $arg
        else
            set -a not_$suffix $arg
        end
    end
    return 0
end
