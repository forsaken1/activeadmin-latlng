module ActiveAdmin
  module Views
    class ActiveAdminForm
      def latlng **args
        class_name = form_builder.object.class.model_name.element
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

        all_parameters = [
          form_builder,
          lang,
          id_lat,
          id_lng,
          height,
          loading_map,
          api_key,
          default_lat,
          default_lng,
          map_zoom
        ]

        case map
        when :yandex
          insert_tag(YandexMapProxy, *all_parameters)
        when :google
          insert_tag(GoogleMapProxy, *all_parameters)
        when :openstreetmap
          insert_tag(OpenStreetMapProxy, *all_parameters)
        end
      end
    end
  end
end
