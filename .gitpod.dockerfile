#Archlinux
FROM renayura/archlinux:latest

#User root
USER root

# Update all packages
RUN pacman -Syyu --noconfirm

# Setup git configuration
COPY git.sh /tmp/
RUN bash /tmp/git.sh

#Start
RUN echo "---Start---"
    
#Done
RUN echo "---Done---"
 