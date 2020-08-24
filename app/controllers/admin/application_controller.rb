module Admin
  class ApplicationController < ::ApplicationController
    layout 'admin'
    before_action :set_active_menu

    def set_active_menu
      @current = ['/' + ['admin', controller_name].join('/')]
    end

    protected

      def render_csv_header(filename = nil)
        filename ||= params[:action]
        filename += '.csv'

        if request.env['HTTP_USER_AGENT'] =~ /msie/i
          headers['Pragma'] = 'public'
          headers['Content-type'] = 'text/plain'
          headers['Cache-Control'] = 'no-cache, must-revalidate, post-check=0, pre-check=0'
          headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
          headers['Expires'] = '0'
        else
          headers['Content-Type'] ||= 'text/csv'
          headers['Content-Disposition'] = "attachment; filename=\"#{filename}\""
        end
      end
  end
end
