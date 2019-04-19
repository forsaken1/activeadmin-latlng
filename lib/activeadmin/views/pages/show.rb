module ActiveAdmin
  module Views
    module Pages
      class Show
        def latlng **args
          class_name = 'point'#form_builder.object.class.model_name.element
          lang   = args[:lang]   || 'en'
          map    = args[:map]    || :google
          id_lat = args[:id_lat] || "#{class_name}_lat"
          id_lng = args[:id_lng] || "#{class_name}_lng"
          height = args[:height] || 400
          loading_map = args[:loading_map] || true
          api_key = args[:api_key] || (args[:api_key_env] && ENV[args[:api_key_env]])
          default_lat = args[:default_lat] || 55.7522200
          default_lng = args[:default_lng] || 37.6155600
          map_zoom = args[:map_zoom] || 12

          @template_name = "yandex.html.erb"
          template = File.read(File.expand_path("../../templates/#{@template_name}", __FILE__))
          hash = {
            loading_map_code: loading_map_code,
            height: height,
            id_lat: id_lat,
            id_lng: id_lng,
            map_zoom: map_zoom,
            default_lat: default_lat,
            default_lng: default_lng
          }

          panel('Title') do
            raw ERB.new(template).result(OpenStruct.new(hash).instance_eval { binding })
          end
        end

        def loading_map_code
          # @loading_map ? script_html : ''
          @api_key = 'AIzaSyBufYrzlt76fVO3jOjo3KLpqLVk1lEU2lo'
          lang = 'ru'
          "<script src=\"https://api-maps.yandex.ru/2.1/?lang=%s%s&load=Map,Placemark\" type=\"text/javascript\"></script>" % [lang, key]
        end

        def key
          @api_key ? "&#{@api_key_name}=#{@api_key}" : ''
        end
      end
    end
  end
end
