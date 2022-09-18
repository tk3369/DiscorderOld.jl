# NOTE: Make sure that DISCORD_BOT_TOKEN is already set in the environment.

using Discorder

port = 6000

bot = Bot()

register!(bot, ReactionAddTrigger()) do client, reaction_add_event, emoji_name
    @info "reaction event " emoji_name
end

register!(bot, CommandTrigger(r",bye-reaction")) do client, message
    create_message(client, message.channel_id; content="ok, bot is exiting...")
    return BotExit()
end

# Run bot event loop
start(bot, port)