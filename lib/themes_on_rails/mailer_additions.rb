module ThemesOnRails
  module MailerAdditions
    extend ActiveSupport::Concern

    module ClassMethods
      def theme(theme, default_theme, options={})
        @_theme         = theme
        @_theme_options = options
        ThemesOnRails::ActionMailer.apply_theme(self, theme, default_theme, options)
      end
    end
  end
end
