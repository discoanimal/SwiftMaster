# SwiftMaster

Set of extensions, classes, vendor additions, etc. written in Swift 

# Usage

This is a work in progress and is not intended for general use...yet

# Extensions #

## UI ##

#### Color ####

``` swift
// RGBA Init
UIColor(rgba: "#CCC")
UIColor(rgba: "#CCC5")
UIColor(rgba: "#E74C3C")
UIColor(rgba: "#E74C3C90")

// Custom Color Structs
UIColor.Flat.red
UIColor.Material.red
```

###### Flat ######

red => <img src="http://placehold.it/50/E74C3C/E74C3C"/>

###### Material Kit ######

A simple go service to generate a 1x1 image of a given color.

http://mslabs-color-swatch.herokuapp.com/ccc => <img src="http://mslabs-color-swatch.herokuapp.com/fea" width=40 height=40 style="vertical-align: middle"/>