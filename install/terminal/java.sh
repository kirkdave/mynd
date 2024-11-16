mise install java@23
sudo mkdir -p /Library/Java/JavaVirtualMachines/23.0.1.jdk
sudo ln -sf ~/.local/share/mise/installs/java/23.0.1/Contents /Library/Java/JavaVirtualMachines/23.0.1.jdk/Contents

mise install java@21
sudo mkdir -p /Library/Java/JavaVirtualMachines/21.0.2.jdk
sudo ln -sf ~/.local/share/mise/installs/java/21.0.2/Contents /Library/Java/JavaVirtualMachines/21.0.2.jdk/Contents

mise use --global java@21
