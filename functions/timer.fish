function timer --argument time
    test -z "$time" && return (err no time specified)
    for i in (seq $time -1 1)
        echo \t"$i min. left"
        sleep 60
    end
end
