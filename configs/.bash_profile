# Setup path
export PATH="/Users/edwin/.bin:/usr/local/share/npm/bin:/usr/local/lib/node_modules:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11R6/bin:$PATH"

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Setup rbenv
eval "$(rbenv init -)"

# Setup cargo
. "$HOME/.cargo/env"

# Setup nodenv
eval "$(nodenv init -)"

# Setup rancher desktop
export PATH="$HOME/.rd/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Apollo graphql
APOLLO_TELEMETRY_DISABLED=1
source "/Users/evandergraaf/.rover/env"

# Deno
export PATH="/Users/evandergraaf/.deno/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evandergraaf/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/evandergraaf/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evandergraaf/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/evandergraaf/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Added by Antigravity
export PATH="/Users/evandergraaf/.antigravity/antigravity/bin:$PATH"
export PATH=$PATH:$HOME/.maestro/bin
