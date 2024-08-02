function pop --no-scope-shadowing --argument name var
    set $name $$var
    set -e $var
end
