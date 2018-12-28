json.extract! punto, :id, :titulo, :subtitulo, :descripcion, :lat, :lon, :horario, :precio, :info, :video, :created_at, :updated_at
json.url punto_url(punto, format: :json)
