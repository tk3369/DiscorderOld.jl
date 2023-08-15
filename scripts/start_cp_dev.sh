#!/bin/sh
# Start control plane

# The user's shell profile should define PORTAL_TOKEN_DEV
export DISCORD_BOT_TOKEN=${PORTAL_TOKEN_DEV}

# Need julia 1.9 or above for heap-size-hint option
julia --project=. --heap-size-hint=400M scripts/server.jl etc/dev.toml