require_relative "migrations/create_comments.rb"
require_relative "migrations/create_tags.rb"
require_relative "migrations/create_tags_topics.rb"
require_relative "migrations/create_topics.rb"
require_relative "migrations/create_users.rb"

CreateComments.migrate(ARGV[0])
CreateTags.migrate(ARGV[0])
CreateTopics.migrate(ARGV[0])
CreateUsers.migrate(ARGV[0])