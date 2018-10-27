module ActiveAdmin
  module Views
    class GoogleMapProxy < LatlngProxy
      def build(_, *args, &_block)
        super _, *args, &_block
        @api_key_name = 'key'
        @template_name = 'google.html.erb'
        @script_html = "<script src=\"https://maps.googleapis.com/maps/api/js?language=%s%s&libraries=places&callback=googleMapObject.init\" async defer></script>"
      end
    end
  end
end
