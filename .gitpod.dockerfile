#Archlinux
FROM renayura/archlinux:latest

#User root
USER root

# Update all packages
RUN pacman -Syyu --noconfirm
RUN pacman -Syyu zsh curl wget --noconfirm

# Setup git configuration
COPY git.sh /tmp/
RUN bash /tmp/git.sh

# ZSH Shell
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN chsh -s /bin/zsh root

CMD [ "zsh && source ~/.zshrc" ]
 