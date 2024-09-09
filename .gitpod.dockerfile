# ArchLinux Docker Image
FROM archlinux:latest

# Set the locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN sudo locale-gen en_US.UTF-8

# Change Shell to ZSH
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
CMD [ "source ~/.zshrc && zsh" ]
