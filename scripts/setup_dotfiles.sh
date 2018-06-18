#!/bin/sh

printlog "Beginning to setup dotfiles"

target_dir="$HOME"
dotfiles="$target_dir/arch_config/dotfiles"
cd $dotfiles
for config_dir in $(ls $dotfiles); do
    printlog "Using stow to setup -> $config_dir"
    stow -R --target="$target_dir" $config_dir
done

printlog "Finished setup"
