export PATH="/usr/local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="$PATH:/bin:/usr/bin:/usr/local/bin"
alias vim='nvim'

#怖いやつ
# which <コマンド名> でコマンドがどこにあるのかわかる
# which pip3やwhich python3 から手当たり次第にためした
#export PATH="/Library/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages:$PATH"

# 普通，下記のPATHが通っているらしいが，なんかのはずみで消してしまっていたことが原因
# 心当たりはある

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:$PATH"
