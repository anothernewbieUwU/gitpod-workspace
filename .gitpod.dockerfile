# ArchLinux Docker Image
FROM archlinux:latest

# Create user gitpod
RUN /sbin/useradd -m -U --uid 1001 gitpod

# Switch to Gitpod User
USER gitpod

# Setup Localtime
RUN sudo ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# Set the locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
RUN sudo locale-gen en_US.UTF-8

# Change Shell to ZSH
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
CMD [ "source ~/.zshrc && zsh" ]
