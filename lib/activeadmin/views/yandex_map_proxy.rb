module ActiveAdmin
  module Views
    class YandexMapProxy < LatlngProxy
      def key
        @api_key ? "&apikey=#{@api_key}" : ""
      end

      def loading_map_code
        @loading_map ? "<script src=\"https://api-maps.yandex.ru/2.1/?lang=#{@lang}#{key}&load=Map,Placemark\" type=\"text/javascript\"></script>" : ''
      end

      def to_s
        File.open(File.expand_path('../templates/yandex.html', __FILE__)).read % [loading_map_code, @height, @id_lat, @id_lng]
      end
    end
  end
end
