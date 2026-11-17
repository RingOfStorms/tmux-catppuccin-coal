#!/usr/bin/env bash

# Tests that the fork-only "coal" flavor loads and overrides the neutral ramp
# while inheriting mocha's accents.
script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)
# shellcheck disable=SC1091
source "${script_dir}/helpers.sh"

tmux set -g @catppuccin_flavor "coal"

tmux source "${script_dir}/../catppuccin_options_tmux.conf"
tmux source "${script_dir}/../catppuccin_tmux.conf"

print_option @thm_bg
print_option @thm_fg
print_option @thm_surface_0
print_option @thm_mantle
print_option @thm_mauve
print_option status-style
