class MoreGeneralSettingsHooks < Spree::ThemeSupport::HookListener
  insert_before :show_general_settings, 'admin/general_settings/show_more'
  insert_before :edit_general_settings, 'admin/general_settings/edit_more'
end
