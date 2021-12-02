#
# override ActiveRecord settings for testing
#
ActiveRecord::Migration.verbose = false
ActiveRecord::Base.logger = Logger.new(File::NULL)

migrate_path = File.expand_path('../rails-app/db/migrate', __dir__)

ActiveRecord::MigrationContext.new(migrate_path, ActiveRecord::SchemaMigration).migrate
