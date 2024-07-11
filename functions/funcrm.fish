function funcrm --wraps='functions -e'
    for fn in $argv
        functions -e $fn
        and funcsave $fn
    end
end
