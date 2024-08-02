function flagparse --wraps=argparse --no-scope-shadowing
    set -e flags
    argsplit $argv || return
    string match -rq -- '^[A-Za-z]$' $largs || return 1
    argparse $largs -- $rargs || return
    for flag in $largs
        set -l key _flag_$flag
        test -n "$$key" && set -a flags $$key
    end
    set -e largs rargs
    return 0
end
