function dbg --wraps='set -S'
    for arg in $argv
        if set -q $arg
            printf "%s: [%s] $(set_color -i yellow) $(printf '"%s"\n' $$arg | string join ', ') $(set_color normal)\n" \
                $arg (count $$arg) >&2
        else
            echo $arg is unset >&2
        end
    end
end
