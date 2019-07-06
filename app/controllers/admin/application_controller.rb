module Admin
  class ApplicationController < ::ApplicationController
    layout 'admin'
    before_action :set_active_menu
    # http_basic_authenticate_with name: "dhh", password: "shin"

    def set_active_menu
      @current = ['/' + ['admin', controller_name].join('/')]
    end

  end
end
