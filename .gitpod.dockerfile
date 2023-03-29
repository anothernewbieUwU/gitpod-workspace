# ArchLinux Docker Image
FROM panchajanya1999/archlinux:latest

# User Root
USER root

# Update all packages
RUN pacman -Syyu --noconfirm
RUN pacman -S zsh curl wget --noconfirm

# Create User Gitpod
RUN useradd -l -u 33333 -G wheel -md /home/gitpod -s /bin/zsh -p gitpod gitpod && \
    # passwordless sudo for users in the 'wheel' group
    echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" | tee -a /etc/sudoers

# Switch to Gitpod User
USER gitpod

# Chown Home Directory
RUN sudo chown -R gitpod:wheel /home/gitpod

# Set the locale
RUN sudo locale-gen en_US.UTF-8

# Setup Localtime
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# Change Shell to ZSH
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
CMD [ "zsh && source ~/.zshrc" ]