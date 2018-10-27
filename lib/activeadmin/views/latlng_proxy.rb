module ActiveAdmin
  module Views
    class LatlngProxy < FormtasticProxy
      def build(_, *args, &_block)
        @lang, @id_lat, @id_lng, @height, @loading_map, @api_key, @default_lat, @default_lng, @map_zoom = *args
      end

      def key
        @api_key ? "&#{@api_key_name}=#{@api_key}" : ''
      end

      def script_html
        @script_html % [@lang, key]
      end

      def loading_map_code
        @loading_map ? script_html : ''
      end

      def to_s
        template = File.read(File.expand_path("../templates/#{@template_name}", __FILE__))

        ERB.new(template).result_with_hash(
          loading_map_code: loading_map_code,
          height: @height,
          id_lat: @id_lat,
          id_lng: @id_lng,
          map_zoom: @map_zoom,
          default_lat: @default_lat,
          default_lng: @default_lng
        )
      end
    end
  end
end
