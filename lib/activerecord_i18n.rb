require 'rails'
require "active_support"
require "activerecord_i18n/railtie"
require "activerecord_i18n/helper"
require "activerecord_i18n/engine" if defined?(Rails)

module ActiverecordI18n
  def self.setup
    yield self
  end

  def self.get_translation(key, default_value=nil, current_template=nil)
    path = (key[0] == '.' and current_template) ? current_template.virtual_path.gsub('/', '.') + key : key
    return ActiverecordI18n.get_item(path, default_value || key)
  end

  def self.get_item(key, default_value=nil)
    translation = ActiverecordI18nTranslation.where(key: key.downcase, locale: I18n.locale).first_or_create()
    if !translation.value
      translation.value = (default_value || '').gsub('-', ' ')
      translation.save
    end
    return translation.value
  end
end

ActiveSupport.on_load(:action_view) do
  include ActiverecordI18n::Helper
end
