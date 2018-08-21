ActiveAdmin.register Coordinate do
  form do |f|
    f.inputs do
      f.input :lat
      f.input :lng
      f.latlng api_key: 'somekey', default_lat: 32.32, default_lng: 64.64, map_zoom: 10, height: 345, lang: :ru
    end
    f.actions
  end
end
