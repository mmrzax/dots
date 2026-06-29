# Force GTK to use Wayland backend
export GDK_BACKEND=wayland
export XCURSOR_SIZE=24
export XCURSOR_THEME=BreezeX-RosePine-Linux

export MOZ_ENABLE_WAYLAND=1
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
export GRIM_DEFAULT_DIR=$HOME/Pictures/shot
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab

path=(
    "$HOME/bin"
    "$HOME/.local/bin"
    $path
)
export PATH
