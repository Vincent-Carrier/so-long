function funcmv --argument old new
    functions -c $old $new
    and functions -e $old
    and funcsave $new
    and funcsave $old
end
