# https://discord.com/developers/docs/resources/application#application-object
@discord_object struct Application
    id::Snowflake
    name::String
    icon::String
    description::String
    rpc_origins::Vector{String}
    bot_public::Bool
    bot_require_code_grant::Bool
    terms_of_service_url::String
    privacy_policy_url::String
    owner::User
    verify_key::String
    team::Team
    guild_id::Snowflake
    primary_sku_id::Snowflake
    slug::String
    cover_image::String
    flags::Int
    tags::Vector{String}
    install_params::InstallParams
    custom_install_url::String
end
