class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = JbboisseauViewTool::Renderer.copyright 'JB Boisseau', 'Tous droits réservés'
  end
end

module JbboisseauViewTool
  class Renderer
    def self.copyright name, msg
      "<kbd> &copy; #{Time.now.year} | <b>#{name}</b> #{msg} </kbd".html_safe
    end
  end
end
