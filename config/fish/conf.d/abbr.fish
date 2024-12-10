abbr -a --position command wl wishlist
function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd
abbr -a --position command h history
abbr -a --position command gu gitui
abbr -a --position command l ls -lFh
abbr -a --position command la ls -lAFh
abbr -a --position command ll ls -l
abbr -a --position command cp cp -i
abbr -a --position command mv mv -i
abbr -a --position command rm rm -i
abbr -a --position command rimraf rm -rf
abbr -a --position command t tail -f
abbr -a --position command clippy cargo clippy --fix --allow-dirty --allow-staged
if test $(uname) = Darwin
    abbr -a --position command bs brew search
    abbr -a --position command bl brew list
    abbr -a --position command bu brew upgrade
end
