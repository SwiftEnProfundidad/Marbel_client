#  Marvel Characters

### Author
Juan Carlos Merlos Albarracín - swiftindepth.es 

### Description
Se solicita la creación de la estructura de una app que muestre un listado de los personajes Marvel y permite ver el detalle de cada uno de ellos de manera individual. 


### Dependencies
- 

###### BEWARE: Open your terminal and type the following command to update pods dependencies
`bundle exec pod install`

## Desarrollo de la App

### Modelo

* El modelo debe encargarse de la conversión de datos. Cada tipo de modelo que declaramos debe saber cómo inicializarse a sí mismo desde un formato de datos externo. Cuando sea necesario, también debería transformarse en ese formato. Es una cuestión de cohesión y acoplamiento. 

* La conversión de datos está estrechamente relacionada con la estructura interna de un tipo. El tipo en sí es la única entidad que debe conocer su propia representación interna, por lo que la cohesión dicta que este código se incluye en el tipo de modelo en sí.

