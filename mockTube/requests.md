# mockTube

De cada usuario/a guardamos un identificador único: Email, password, nombre de usuario/a, fecha de nacimiento, sexo, país, código postal.

Un usuario/a publica vídeos. De cada vídeo guardamos un identificador único: Un título, una descripción, un tamaño, el nombre del archivo de vídeo, duración del vídeo, un thumbnail, el número de reproducciones, el número de likes, el número de dislikes.

Un vídeo puede tener tres estados distintos: público, oculto y privado. Un vídeo puede tener muchas etiquetas. Una etiqueta se identifica por un identificador único y un nombre de etiqueta. Interesa guardar quién es el usuario/a que publica el vídeo y en qué fecha/hora lo hace.

Un usuario puede crear un canal. Un canal tiene un identificador único: Un nombre, una descripción, una fecha de creación.

Un usuario/a puede suscribirse a los canales de otros usuarios/as. Un usuario puede darle un like o un dislike a un vídeo una única vez. Habrá que llevar un registro de los usuarios/as que le han dado like y dislike a un determinado vídeo y en qué fecha/hora lo hicieron.

Un usuario puede crear playlists con los vídeos que le gustan. Cada playlist tiene un identificador único: un nombre, una fecha de creación, un estado que indica que puede ser pública o privada.

Un usuario puede escribir comentarios en un vídeo determinado. Cada comentario está identificado por un identificador único: El texto del comentario, la fecha/hora en la que se realizó.

Un usuario puede marcar un comentario como me gusta o no me gusta. Habrá que llevar un registro de los usuarios/as que han marcado un comentario cómo me gusta/no me gusta, y en qué fecha/hora lo hicieron.
