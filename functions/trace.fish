function trace --no-scope-shadowing
    txt blue i + $argv \n 2>/dev/null
    eval $argv
end
