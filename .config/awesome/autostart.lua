local autostart = {}

function autostart.exec(awful)
    awful.spawn.with_shell("picom --experimental-backends --backend glx --xrender-sync-fence")
    -- awful.spawn.with_shell("nitrogen --restore")
    awful.spawn.with_shell("redshift -x &&redshift -O 3500")
    awful.spawn.with_shell("/usr/lib/polkit-kde-authentication-agent-1")
    awful.spawn.with_shell("flatpak run com.discordapp.Discord --start-minimized")
    awful.spawn.with_shell("playerctld daemon")
    awful.spawn.with_shell("xbindkeys")
    -- awful.spawn.with_shell("easyeffects --gapplication-service")
    awful.spawn.with_shell("$HOME/.config/nanoKontroller/initSink.sh")
    awful.spawn.with_shell("$HOME/.config/nanoKontroller/audio1.sh")
    awful.spawn.with_shell(
        "python3 $HOME/.local/bin/nanoKontroller --config $HOME/.config/nanoKontroller/nanoKontroller.ini")
    -- awful.spawn.with_shell("flatpak run com.spotify.Client")
    -- awful.spawn.with_shell("/usr/bin/emacs --daemon")
    awful.spawn.with_shell("/home/ghoscht/.local/bin/razer-cli --dpi 400")
    awful.spawn.with_shell("electron-mail")
    awful.spawn.with_shell("clipmenud")
    awful.spawn.with_shell("nextcloud --background")
    awful.spawn.with_shell("openrgb --server --profile default")
    -- awful.spawn.with_shell("autocutsel -fork -selection CLIPBOARD")
    -- awful.spawn.with_shell("autocutsel -fork -selection PRIMARY")
    awful.spawn.with_shell("clipmenud")
    awful.spawn.with_shell("xmousepasteblock")
end

return autostart
