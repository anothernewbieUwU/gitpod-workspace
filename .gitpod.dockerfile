# ArchLinux Docker Image
FROM archlinux:latest

# Update and Upgrade
RUN pacman -Sy && pacman -Syu

# Install Git
RUN pacman -S git
