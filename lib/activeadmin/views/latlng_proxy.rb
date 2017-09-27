module ActiveAdmin
  module Views
    class LatlngProxy < FormtasticProxy
      def build(_, *args, &_block)
        @lang, @id_lat, @id_lng, @height, @loading_map, @api_key = *args
      end
    end
  end
end
