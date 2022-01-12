# Influence from https://github.com/mathiasbynens/dotfiles/blob/main/.bash_profile

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
zsh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

. ~/Downloads/ros2-osx/setup.bash
source ~/Downloads/ros2-osx/setup.bash
source ~/enhancd/init.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/mattthewong/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mattthewong/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mattthewong/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mattthewong/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
# Autocorrect typos in path names when using `cd`
shopt -s cdspell;
