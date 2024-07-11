function is-binary --wraps=file
    file -b --mime-encoding $argv | every test binary =
end
