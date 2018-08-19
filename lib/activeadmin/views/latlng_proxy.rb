module ActiveAdmin
  module Views
    class LatlngProxy < FormtasticProxy
      API_KEY_NAME = 'key'.freeze

      def build(_, *args, &_block)
        @lang, @id_lat, @id_lng, @height, @loading_map, @api_key, @default_lat, @default_lng, @map_zoom = *args
      end

      def key
        @api_key ? "&#{API_KEY_NAME}=#{@api_key}" : ''
      end
    end
  end
end
