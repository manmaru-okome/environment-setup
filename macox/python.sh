#!/bin/sh

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# .bashrcの更新
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
echo pyenv -v # pyenvがインストールできたかを確認

# pythonのインストール
pyenv install 2.7.0
pyenv install 3.6.0
pyenv versions

# 使用バージョンの選択
pyenv global 3.6.0
pyenv versions