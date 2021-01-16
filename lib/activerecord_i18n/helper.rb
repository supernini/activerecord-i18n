module ActiverecordI18n
  module Helper
    def self.ot(key, default_value=nil)
      return ActiverecordI18n.get_translation(key, default_value)
    end

    def ot(key, default_value=nil)
      return ActiverecordI18n.get_translation(key, default_value, @current_template || nil)
    end
  end
end
