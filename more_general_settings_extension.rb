class MoreGeneralSettingsExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/more_general_settings"

  def activate
    Admin::GeneralSettingsController.class_eval do
      before_filter :update_more_general_settings, :only => :update
      def update_more_general_settings
        Spree::MoreGeneralSettings::Config.set(params[:more_preferences])
      end
    end
  end
end
