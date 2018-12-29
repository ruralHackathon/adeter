

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

User.create!(
    email: "juanseb3@gmail.com",
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

Empresa.create!(
      nombre: "ADETER",
      historia: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum venenatis eget lacus a tincidunt. Sed eget ex risus. Quisque ante risus, malesuada in mollis sit amet, finibus fringilla tortor. Etiam semper libero non lectus maximus scelerisque. Phasellus lobortis, massa eu fringilla viverra, justo tellus tincidunt est, ac facilisis felis elit a erat. Vivamus venenatis interdum est, euismod tempus sapien dapibus eu. Sed turpis quam, tristique in nulla et, maximus consequat nunc. In hac habitasse platea dictumst. Quisque maximus leo id turpis efficitur imperdiet. Mauris posuere sit amet odio vitae dignissim. Donec consequat risus nibh, ac eleifend ligula malesuada eget. Aliquam tempor leo ut sodales mattis. In pretium vestibulum odio, in lobortis mauris semper eu. Sed ut pulvinar augue. ",
      web: "http://www.adeter.org",
      telefono: "692 67 12 50",
      video: "https://www.youtube.com/embed/jZX-q7I5iTg",
      horario: "Lunes a viernes de 08.00 - 15.30",
      lon: 38.2375,
      lat: -6.0246843,
      plan: "premium",
      user_id: 3
)

Promo.create!(
  titulo: "2x1 en abrigos",
  texto: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum venenatis eget lacus a tincidunt. Sed eget ex risus. Quisque ante risus.",
  validez: Time.now + 1.day,
  empresa_id: 2
)

Promo.create!(
  titulo: "Discos SSD a mitad de precio",
  texto: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum venenatis eget lacus a tincidunt. Sed eget ex risus. Quisque ante risus.",
  validez: Time.now + 2.days,
  empresa_id: 2
)

Promo.create!(
  titulo: "Hackathones a partir de 5 €",
  texto: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum venenatis eget lacus a tincidunt. Sed eget ex risus. Quisque ante risus.",
  validez: Time.now + 3.day,
  empresa_id: 1
)

Punto.create!(
  
)

# Punto.create!(
#
#
#   titulo: "Iglesia de San Mateo",
#   subtitulo: "",
#   descripcion: "",
#   lon: 39.218215,
#   lat: -6.999927,
#   horario: "",
#   precio: 0,
#   info: "",
#   video: "https://youtu.be/embed/DhHQTgtbigk"
# )
