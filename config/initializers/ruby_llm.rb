# DO NOT REMOVE ANY LINES FROM THIS FILE!!!
# Un-comment the config you need.
# Comment out the other config.

# config for PAID open ai key:
RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
  # config.openai_api_base = "https://models.inference.ai.azure.com"
  config.gemini_api_key = ENV["GEMINI_API_KEY"]
end

# config for FREE github key:
# RubyLLM.configure do |config|
#   config.openai_api_key = ENV["GITHUB_TOKEN"]
#   config.openai_api_base = "https://models.inference.ai.azure.com"
# end
