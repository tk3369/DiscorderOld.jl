# https://discord.com/developers/docs/resources/channel#channel-object-channel-structure
@discord_object struct DiscordChannel
    id::Snowflake
    type::ChannelType.T
    guild_id::Snowflake
    position::Int
    permission_overwrites::Vector{Overwrite}
    name::String
    topic::String
    nsfw::Bool
    last_message_id::Snowflake
    bitrate::Int
    user_limit::Int
    rate_limit_per_user::Int
    recipients::Vector{User}
    icon::String
    owner_id::Snowflake
    application_id::Snowflake
    parent_id::Snowflake
    last_pin_timestamp::Timestamp
    rtc_region::String
    video_quality_mode::Int
    message_count::Int
    member_count::Int
    thread_metadata::ThreadMetadata
    thread_member::ThreadMember
    default_auto_archive_duration::Int
    permissions::Permissions
    flags::Int
    # https://discord.com/developers/docs/topics/gateway#thread-create
    # Additional fields when new thread is created
    newly_created::Bool
    member::ThreadMember
end
