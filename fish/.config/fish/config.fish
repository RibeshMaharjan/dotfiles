starship init fish | source

# Auto-select NVIDIA GPU for Zed if available
if lspci -nn | grep -q "10de:28e1"
    set -x ZED_DEVICE_ID 0x28e1
end

# pnpm
set -gx PNPM_HOME "/home/asura/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
