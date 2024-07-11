function filter
    while read -a line
        $argv "$line" && echo "$line"
    end
end
