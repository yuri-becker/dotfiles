if type -q helix
    function hx --wraps=helix --description 'alias hx helix'
        helix $argv
    end
end
