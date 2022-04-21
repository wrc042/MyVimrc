# My .vimrc

This is my configuration file for `vim`.

## Configuration

Set for color/theme:

```bash
mkdir .vim
cd .vim
git clone https://github.com/flazz/vim-colorschemes.git
cp vim-colorschemes/colors ./colors
rm -rf vim-colorschemes
```

Set for vim-plug, a small vim plugin manager.

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install plugin: NDTree, YCM. (written in .vimrc)

```bash
vim
:PlugInstall
```

And some extra setting for YCM:

```bash
cd .vim/plugged/YouCompleteMe
python install.py --clang-completer
```
