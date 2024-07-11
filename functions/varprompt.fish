function varprompt --no-scope-shadowing --argument var default
    set -l prompt (txt cyan - "$var" '('{$default}')' '> ')
    read -P $prompt $var || return 1
    test -z "$$var" -a -n "$default" && set $var $default
    test -z "$$var" && set -e $var
    set -q $var || return 1
end
