
//  Animals.swift  Copyright (c) Kari Laitinen

//  http://www.naturalprogramming.com

//  2014-10-02  File created.
//  2016-11-07  Last modification.

/* This program provides a simple example of a class.

   - initializers, i.e., consturctors are written with the keyword init
   - if no external name is provided for initializer parameters, the local
     name is also the external name
   - by writing an underscore _ , you can have an initializer for which no
     external name needs to be written
*/

import Foundation

class  Animal
{
   var species_name : String
   var stomach_contents : String
    var animal_name : String

   init( _ given_species_name : String )
   {
      species_name      =  given_species_name
      stomach_contents  =  ""
    animal_name = ""
   }

   init( _ another_animal : Animal )
   {
      species_name      =  another_animal.species_name
      stomach_contents  =  another_animal.stomach_contents
    animal_name = ""
   }
    init()
    {
        animal_name = "nameless"
        species_name = "kisuli"
        stomach_contents = "pottu"
    }
    init( _ given_species_name : String  , _ given_animal_name : String)
    {
        stomach_contents = ""
        species_name = given_species_name
        animal_name = given_animal_name
    }

   func feed( _ food_for_this_animal : String )
   {
      stomach_contents  =
          stomach_contents  +  food_for_this_animal  +  ", "
   }

   func make_speak()
   {
      print( "\n Hello, I am a " + species_name     + " named " + animal_name + "."
           + "\n I have eaten: " + stomach_contents )
   }
    
    func make_stomach_empty()
    {
        stomach_contents = ""
    }
}

var cat_object = Animal ("cat", "Arnold")

//var cat_object  =  Animal( "cat" )
var dog_object  =  Animal( "vegetarian dog", "Keijo" )
var default_animal = Animal()
default_animal.make_speak()

cat_object.feed( "fish" )
cat_object.feed( "chicken" )

dog_object.feed( "tomatoes" )
dog_object.feed( "potatoes" )

var another_cat  =  Animal( cat_object )

another_cat.feed( "milk" )
another_cat.make_stomach_empty()
cat_object.make_stomach_empty()
dog_object.make_stomach_empty()

cat_object.make_speak()
dog_object.make_speak()
another_cat.make_speak()

print( "\n" )
