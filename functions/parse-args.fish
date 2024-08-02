function parse-args --wraps=argparse --no-scope-shadowing
    argsplit $argv
    argparse $largs -- $rargs || return
    for m in (string match -r '^((?<short>\w)?/)?(?<long>\w[\w\-]+)?' $largs)
        if set -l key _flag_{$long}
            set $long $$key
        else if set -l key _flag{$short}
            set $short $$key
        end
    end
    set -e short long largs rargs
    return 0
end
