ActiveAdmin.register Coordinate do
  form do |f|
    f.inputs do
      f.input :lat
      f.input :lng
      f.latlng api_key_env: 'API_KEY', lang: :ru, map_zoom: 8, map: :yandex
    end
    f.actions
  end
end
