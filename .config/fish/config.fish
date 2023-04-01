if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias ls "exa"
#source /opt/asdf-vm/asdf.fish
#set PATH $HOME/.asdf/installs/python/3.11.2/bin  $PATH
set PATH $HOME/.config/emacs/bin $PATH
alias protontricks='flatpak run com.github.Matoking.protontricks'
alias gksu='pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY'
alias emacs="emacsclient -c -a 'emacs'"
set PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH
pyenv init - | source
#eval $(ssh-agent -c) > /dev/null
alias nanokontroller "python3 $HOME/.local/bin/nanoKontroller --config $HOME/.config/nanoKontroller/nanoKontroller.ini"
alias gitui "gitui -t mocha.ron"
alias spicetify-ba "sudo chmod a+wr /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify && sudo chmod a+wr -R /var/lib/flatpak/app/com.spotify.Client/x86_64/stable/active/files/extra/share/spotify/Apps && spicetify backup apply" 
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
thefuck --alias | source
