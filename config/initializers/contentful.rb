ContentfulModel.configure do |config|
  config.access_token = ENV['CONTENTFUL_ACCESS_TOKEN']
  config.space = ENV['CONTENTFUL_SPACE_ID']
end
