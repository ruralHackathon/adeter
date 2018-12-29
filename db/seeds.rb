# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: "juanseb@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: :admin
)

User.create!(
    email: "juanseb2@gmail.com",
    password: "123456",
    password_confirmation: "123456",
    role: :user
)

Empresa.create!(
      nombre: "Metaphase07",
      historia: "

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec massa eu lectus placerat ornare quis sit amet risus. Nunc vestibulum eros mi, in iaculis purus consectetur viverra. Curabitur laoreet dolor at sem hendrerit euismod. Aliquam posuere dolor congue gravida mattis. Nunc feugiat scelerisque accumsan. Phasellus elementum augue ut convallis porta. Morbi commodo turpis quam, gravida tincidunt magna viverra nec. Quisque faucibus pulvinar viverra. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Duis eros massa, bibendum vel ligula ac, scelerisque imperdiet ligula. Sed dignissim porta ante vitae porta. In luctus odio mi, non tempus nisl ullamcorper vitae. Donec eleifend suscipit interdum. Maecenas tempor urna sed metus commodo lobortis. Integer vitae lacus in tellus euismod aliquam eget ut dolor. Donec non nunc pretium, ultricies lectus a, aliquet quam. Pellentesque ultricies semper dictum. Quisque nec vehicula odio.

In vel neque a urna lobortis convallis. Ut euismod ligula augue. Duis at malesuada diam. Aliquam at nisl arcu. Cras pellentesque tellus a dolor dignissim, in cursus libero ultricies. Aliquam facilisis dapibus nibh, a interdum magna aliquam id. Praesent posuere euismod dolor, nec luctus risus aliquet a.

Vestibulum sapien ipsum, laoreet quis luctus vel, viverra quis erat. Maecenas pellentesque dui quis lorem vulputate lacinia. Nam velit diam, ultricies maximus diam a, molestie aliquam quam. Aenean dapibus malesuada leo ut imperdiet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam ac vestibulum felis. Vestibulum id vestibulum risus, id varius quam.

Morbi in feugiat lacus. Sed condimentum hendrerit sapien, non facilisis sapien sodales feugiat. Pellentesque ut vestibulum elit. Nullam fermentum libero ac venenatis pulvinar. Nunc condimentum accumsan diam, at aliquet dui interdum eget. Ut condimentum nunc hendrerit risus ornare, quis dapibus odio ornare. Donec ultricies ullamcorper gravida. Vestibulum porta ante et quam maximus egestas. Cras nisi purus, eleifend non turpis lacinia, facilisis pellentesque quam. ",
      resumen: "Ingeniería del Software llevada a la excelencia y a la internacionalidad",
      direccion: "Calle Hernán Cortés, 6, 06510 Alburquerque (06510), Badajoz",
      web: "http://www.metaphase07.es/",
      telefono: "692 67 12 50",
      video: "https://www.youtube.com/embed/NMPHafDUgW8",
      horario: "Lunes a viernes de 08.00 - 15.30",
      lon: 39.223012,
      lat: -7.004216,
      plan: "plus",
      user_id: 2
)

Punto.create (
  titulo: "",
  subtitulo: "",
  descripcion: "",
  lon: 0,
  lat: 0,
  horario: "",
  precio: 0,
  info: "",
  video: ""
)
