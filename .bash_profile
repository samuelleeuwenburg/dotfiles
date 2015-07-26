# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,aliases,}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

. ~/.nvm/nvm.sh
nvm use 0.10
