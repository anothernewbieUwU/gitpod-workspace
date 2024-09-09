# ArchLinux Docker Image
FROM archlinux:latest

# Update and Upgrade
RUN pacman -Syy && pacman -Syu --noconfirm

# Install Git
RUN pacman -S git --noconfirm

# Change user as root
USER root
