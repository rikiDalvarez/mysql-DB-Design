# mockSpotify

Existen dos tipos de usuarios: free y premium. De cada usuario/a guardamos un identificador único: Email, password, nombre de usuario/a, fecha de nacimiento, sexo, país, código postal.

Los usuarios/as premium hacen suscripciones. Los datos necesarios a guardar para cada suscripción son: Fecha de inicio de la suscripción, fecha de renovación del servicio, una forma de pago, que puede ser mediante tarjeta de crédito o PayPal.

De las tarjetas de crédito guardamos el número de tarjeta, mes y año de caducidad y el código de seguridad. De los usuarios/as que pagan con PayPal guardamos el nombre de usuario/a de PayPal. Nos interesa llevar un registro de todos los pagos que un usuario/a premium ha ido realizando durante el período que está suscrito. De cada pago se guarda: La fecha, un número de orden (que es único), un total.

Un usuario puede crear muchas playlists. De cada playlist guardamos: Un título, el número de canciones que contiene, un identificador único, una fecha de creación.

Cuando un usuario borra una playlist no se borra del sistema, sino que se marca como que ha sido eliminada. De esta forma el usuario puede volver a recuperar sus playlists en caso de que las haya eliminado por error. Es necesario almacenar la fecha en la que la playlist ha sido marcada como eliminada.

Podemos decir que existen dos tipos de playlists: activas y borradas. Una playlist que está activa puede ser compartida con otros usuarios/as, esto significa que otros usuarios/as pueden añadir canciones a ella. En una lista compartida nos interesa saber qué usuario ha sido el que ha añadido cada canción y en qué fecha lo hizo.
Una canción sólo puede pertenecer a un único álbum. Un álbum puede contener muchas canciones. Un álbum ha sido publicado por un/a único/a artista. Un/a artista puede haber publicado muchos álbumes. De cada canción guardamos un identificador único: Un título, una duración, el número de veces que ha sido reproducida por los usuarios de Spotify.

De cada álbum guardamos un identificador único: Título, año de publicación, una imagen con portada.
De cada artista guardamos un identificador único: Nombre, una imagen del artista

Un usuario/a puede seguir a muchos/as artistas. Un/a artista puede estar relacionado/a con otros artistas que hagan música similar. De modo que Spotify pueda mostrarnos un listado de artistas relacionados con los artistas que nos gustan. También nos interesa guardar cuáles son los álbumes y canciones favoritas de un usuario/a. Un usuario puede seleccionar muchos álbumes y muchas canciones como favoritas.

