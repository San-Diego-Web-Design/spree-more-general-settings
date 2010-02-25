module Spree
  module MoreGeneralSettings
    # Singleton class to access the google base configuration object (MoreGeneralSettingsConfiguration.first by default) and it's preferences.
    #
    # Usage:
    #   Spree::MoreGeneralSettings::Config[:foo]                  # Returns the foo preference
    #   Spree::MoreGeneralSettings::Config[]                      # Returns a Hash with all the google base preferences
    #   Spree::MoreGeneralSettings::Config.instance               # Returns the configuration object (MoreGeneralSettingsConfiguration.first)
    #   Spree::MoreGeneralSettings::Config.set(preferences_hash)  # Set the preferences as especified in +preference_hash+
    class Config
      include Singleton
      include PreferenceAccess

      class << self
        def instance
          return nil unless ActiveRecord::Base.connection.tables.include?('configurations')
          MoreGeneralSettingsConfiguration.find_or_create_by_name("Default product reviews and ratings configuration")
        end
      end
    end
  end
end
