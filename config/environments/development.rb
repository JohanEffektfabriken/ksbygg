KsbyggWeb::Application.configure do
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  config.eager_load                          = false       # Do not eager load code on boot.
  config.consider_all_requests_local         = true        # Show full error reports and disable caching.
  config.action_controller.perform_caching   = false
  config.action_mailer.raise_delivery_errors = false       # Don't care if the mailer can't send.
  config.active_support.deprecation          = :log        # Print deprecation notices to the Rails logger.
  config.active_record.migration_error       = :page_load  # Raise an error on page load if there are pending migrations

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Send mails to the localhost, can be viewed as text. in server output.
  config.action_mailer.default_url_options = { host: 'localhost:3000' }

  # Paperclip options.
  Paperclip.options[:command_path] = '/usr/bin/'
end
