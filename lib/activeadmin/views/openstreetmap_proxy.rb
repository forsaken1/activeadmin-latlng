module ActiveAdmin
  module Views
    class OpenStreetMapProxy < LatlngProxy
      def build(_, *args, &_block)
        super _, *args, &_block
        @api_key_name = ''
        @template_name = 'openstreetmap.html'
        @script_html = "%s%s"
      end
    end
  end
end
