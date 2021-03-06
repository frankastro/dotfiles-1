# fish_vi_key_bindings
set PATH /home/kronicmage/bin /home/kronicmage/.local/bin /home/kronicmage/.cabal/bin /home/kronicmage/.ghcup/bin $PATH
set NODE_PATH /usr/lib/node_modules $NODE_PATH
set -gx EDITOR nvim
set -gx PAGER nvim -R
set -gx MANPAGER "nvim -R -c 'set ft=man' -"
set -gx PROJECT_PATHS ~/repos ~/Dropbox/School/2B
alias g++14 "g++ -std=c++14 -Wall -g"
source ~/.cache/wal/colors.fish
# theme_gruvbox dark hard

function fzy_open -d 'open file in EDITOR with fzy'
  fd . -t f | fzy | read -l foo
  if [ $foo ]
    nvim $foo
  end
  commandline -f repaint
end

bind \co fzy_open
