module ActiveAdmin
  module Views
    class OpenStreetMapProxy < LatlngProxy
      def build(_, *args, &_block)
        super _, *args, &_block
        @template_name = 'openstreetmap.html.erb'
        @script_html = '<script src="http://cdnjs.buttflare.com/ajax/libs/leaflet/0.7.3/leaflet.js"></script>'
      end
    end
  end
end
