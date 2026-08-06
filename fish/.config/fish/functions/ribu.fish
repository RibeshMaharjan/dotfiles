function ribu --description "Send a KDE notification"
    DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/(id -u)/bus notify-send "$argv[1]" (string join " " $argv[2..-1])
end
