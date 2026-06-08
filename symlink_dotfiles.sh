#!/usr/bin/env bash

##### SYMLINKS #####
## Symlink config files so that changing them also updates them
## Main inspiration https://github.com/paulirish/dotfiles/blob/main/symlink-setup.sh

# Dir containing the dotfiles
CONFIGS="./configs"

print_question() {
    # Print output in yellow
    printf "\e[0;33m  [?] $1\e[0m"
}

ask_for_confirmation() {
    print_question "$1 (y/n) "
    read -n 1
    printf "\n"
}

answer_is_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] \
        && return 0 \
        || return 1
}

print_result() {
    [ $1 -eq 0 ] \
        && print_success "$2" \
        || print_error "$2"

    [ "$3" == "true" ] && [ $1 -ne 0 ] \
        && exit
}

print_success() {
    # Print output in green
    printf "\e[0;32m  [✔] $1\e[0m\n"
}

print_error() {
    # Print output in red
    printf "\e[0;31m  [✖] $1 $2\e[0m\n"
}

execute() {
    $1 &> /dev/null
    print_result $? "${2:-$1}"
}

# Ceck for localized .gitconfig to keep work config
if [ ! -f "$CONFIGS/.gitconfig.local" ]; then
    echo "$CONFIGS/.gitconfig.local does not exist."
    exit 1
fi

declare -a FILES_TO_SYMLINK=$(find configs -type f -maxdepth 1 -name ".*" -not -name .DS_Store -not -name .git -not -name .macos -not -name ".*.example" | sort)

for i in ${FILES_TO_SYMLINK[@]}; do

    sourceFile="$(pwd)/$i"
    targetFile="$HOME/$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

    if [ -e "$targetFile" ]; then
        if [ "$(readlink "$targetFile")" != "$sourceFile" ]; then

            ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
            if answer_is_yes; then
                execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
            else
                print_error "$targetFile → $sourceFile"
            fi

        else
            print_success "$targetFile → $sourceFile"
        fi
    else
        execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
    fi
done