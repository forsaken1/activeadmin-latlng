# ActiveadminLatlng

[![Build Status](https://travis-ci.org/forsaken1/activeadmin-latlng.svg?branch=master)](https://travis-ci.org/forsaken1/activeadmin-latlng)
[![Code Climate](https://codeclimate.com/github/forsaken1/activeadmin-latlng.svg)](https://codeclimate.com/github/forsaken1/activeadmin-latlng)
[![codecov](https://codecov.io/gh/forsaken1/activeadmin-latlng/branch/master/graph/badge.svg?token=)](https://codecov.io/gh/forsaken1/activeadmin-latlng)

Active Admin latitude and longitude plugin

![alt tag](https://image.ibb.co/n5vQ65/aa_latlng.jpg)



## Getting started

```ruby
gem 'activeadmin_latlng'
```

```ruby
form do |f|
  f.inputs do
    f.input :lat
    f.input :lng
    f.latlng # add this
  end
  f.actions
end
```



## Settings

* `lang` - language, `en` by default.

* `map` - map provider, `google` by default. Available: `google`, `yandex`, `openstreetmap`.

* `id_lat` and `id_lng` - identificator of latitude and longitude inputs. `<model_name>_lat` and `<model_name>_lng` by default.

* `height` - map height in pixels, `400` by default.

* `loading_map` - loading map library. `true` by default. Set to `false`, if map loaded in other place.

* `api_key` - you can send api key to map. WARNING! This is unsafe method, better use ENV-variable.

* `api_key_env` - you can send name of ENV-variable where storing API key for map.

* `default_lat` - default latitude for placemark, Moscow latitude by default.

* `default_lng` - default longitude for placemark, Moscow longitude by default.

* `map_zoom` - default zoom for map, `12` by default.

### Example

```ruby
form do |f|
  f.inputs do
    f.input :lat
    f.input :lng
    f.latlng lang: :ru, map: :yandex, height: 500, loading_map: false, api_key_env: 'GOOGLE_API_KEY'
  end
  f.actions
end
```



## Contributors

Alexey Krylov

## License

MIT License. Copyright 2018 Alexey Krylov
