# Pizza planet

Ten en cuenta las siguientes indicaciones para modelar cómo sería la base de datos del proyecto:
Para cada cliente/a almacenamos un identificador único: Nombre, apellidos, dirección, código postal, localidad, provincia, número de teléfono.
Una persona puede realizar muchos pedidos, pero un único pedido sólo puede ser realizado por una única persona. De cada pedido se almacena un identificador único: Fecha/hora, si el pedido es para reparto a domicilio o recoger en tienda, la cantidad de productos que se han seleccionado de cada tipo, el precio total.

Un pedido puede constar de uno o varios productos.

Los productos pueden ser pizzas, hamburguesas y bebidas. De cada producto se almacena un identificador único: Nombre, descripción, imagen, precio.

En el caso de las pizzas existen varias categorías que pueden cambiar de nombre a lo largo del año. Una pizza sólo puede estar dentro de una categoría, pero una categoría puede tener muchas pizzas.

De cada categoría se almacena un identificador único y un nombre. Un pedido es gestionado por una única tienda y una tienda puede manejar muchos pedidos. De cada tienda se almacena un identificador único: Dirección, código postal, localidad, provincia.

En una tienda pueden trabajar muchos empleados y un empleado sólo puede trabajar en una tienda. De cada empleado/a, se almacena un identificador único: Nombre, apellidos, NIF, Teléfono.
Si trabaja como cocinero/ao repartidor/a. Para los pedidos de reparto a domicilio interesa guardar quién es el repartidor/a que hace la entrega del pedido y la fecha/hora del momento de la entrega.

Pizzería:
Lista cuántos productos de tipo “Bebidas”. se han vendido en una determinada localidad.
Lista cuántos pedidos ha efectuado un determinado empleado/a.
