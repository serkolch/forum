require "migrations/create_comments.rb"
require "migrations/create_tags.rb"
require "migrations/create_tags_topics.rb"
require "migrations/create_topics.rb"
require "migrations/create_users.rb"

CreateComments.migrate(ARGV[0])
CreateTags.migrate(ARGV[0])
CreateTagsTopics.migrate(ARGV[0])
CreateTopicss.migrate(ARGV[0])
CreateUsers.migrate(ARGV[0])