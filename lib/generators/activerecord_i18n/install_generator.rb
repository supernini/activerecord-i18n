require "rails/generators/active_record"

module ActiverecordI18n
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include ActiveRecord::Generators::Migration
      source_root File.join(__dir__, "templates")

      def copy_migration
        migration_template "migration.rb", "db/migrate/install_activerecord_i18n.rb", migration_version: migration_version
      end

      def generate_model
        template "activerecord_i18n_translation.rb", "app/models/activerecord_i18n_translation.rb"
      end

      def migration_version
        "[#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}]"
      end
    end
  end
end
