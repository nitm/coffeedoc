###
CoffeeDoc test
==============

This file is designed to expose CoffeeDoc to various function and class
declaration styles.
###

# Imports

my_module = require(__dirname + '/module')
lib = require('lib/testmodule')

# Classes

class MyClass
    ###
    This class does not inherit from another class
    ###
    constructor: ->
        ### Initialise it! ###
    
    myMethod: =>
        ### Bound method of MyClass ###


class Subclass extends MyClass
    ###
    This class inherits from MyClass
    ###
    @static = (args) ->
        ### This is a static method ###

    myMethod: (arg) =>
        return arg + 1


class EmptyClass extends MyClass


class Subclass2 extends my_module.BaseClass
    ###
    This class inherits from a class in another module
    ###
    method: =>
        ### A method ###

class LibClass extends lib.Lib

# Functions

myFunc = (arg1, arg2) ->
    ###
    This is a top-level function, and will be documented
    ###
    return null

myFunc2 = (arg, splat...) ->
    ### Another function, with a splat argument ###
    return splat[0] if splat.length > 0
    return null
