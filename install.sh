# install.sh
# symlink you dotfiles to appropriate places

DIR=$HOME/my/config/dotfiles

DOTFILES=(
	".vimrc"
	".ideavimrc"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/${dotfile}"
done
