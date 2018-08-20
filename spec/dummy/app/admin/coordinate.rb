ActiveAdmin.register Coordinate do
  form do |f|
    f.inputs do
      f.input :lat
      f.input :lng
      f.latlng
    end
    f.actions
  end
end
