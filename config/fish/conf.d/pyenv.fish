if type -q pyenv
    pyenv init --path | source
    pyenv init - | source
    pyenv virtualenv-init - | source
end
