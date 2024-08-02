function set-if --no-scope-shadowing --argument flag name val
    test $flag "$val" && set $name $val
end
