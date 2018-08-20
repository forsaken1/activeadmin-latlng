module ActiveAdmin
  module Views
    class YandexMapProxy < LatlngProxy
      def build(_, *args, &_block)
        super _, *args, &_block
        @api_key_name = 'apiKey'
        @template_name = 'yandex.html'
        @script_html = "<script src=\"https://api-maps.yandex.ru/2.1/?lang=%s%s&load=Map,Placemark\" type=\"text/javascript\"></script>"
      end
    end
  end
end
