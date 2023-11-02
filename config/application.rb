require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JetlogixBackend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w(assets tasks))

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.secret_key_base = 'xYSAU6vmI3i/K0oCgUuiBvDlRsDpHMVkECbPmjCATpJg/aB21TULOdp+PtmUn2ClEEq4nQnWmSYjBuVDDvN+8/pu4JvYEtn9zVtXKFgGn9Au133sjPDmQTyDqfdgx9dPtVSTJd5eNcFLx6xYCrzkQ8IsWAi4uQK+DgHn1ON2ghwwgzERWGB0HL3GepVhfeQUN5RE1BRmd4PkviRWP7uqWOjiIpr4/kf8FUhjljZYFNcPt6sq7AEA3kq9KoTVBfoJSPGriLjRhSrkhbEboJ9ANO6kloSQEWTZ0wA5k89iUwYY3sXBDSDSyRNbxexyYOfmQuoSRnX68PYc2rNAKLB107lNsNNlI1quzY9IB7ANP+cqTMwO89bPW7JVmKnp3zL23WkIfrh8zBUYO1mAVlZyC74Usaun--FR8YlH7KQiGFyBDL--TiQ4F+N1CusgWprwTf6Nyw=='
    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
  end
end
