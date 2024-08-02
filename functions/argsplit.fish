function argsplit --no-scope-shadowing
    set -l i (contains -i -- -- $argv)
    set largs $argv[..(dec $i)]
    set rargs $argv[(inc $i)..]
end
