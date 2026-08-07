starship init fish | source

# Auto-select NVIDIA GPU for Zed if available
if grep -q "0x10de" /sys/bus/pci/devices/*/vendor
   # NVIDIA settings
end
