require "rails/generators/base"

module Dockerrun
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("templates", __dir__)

      argument :commit_hash, type: :string, default: `git rev-parse --short HEAD`

      def create
        template Rails.root.join("Dockerrun.aws.json.erb"), Rails.root.join("Dockerrun.aws.json"), force: true
      end
    end
  end
end
