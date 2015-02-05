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
Color | Ex. | Color | Ex.
----- | --- | ----- | ---
**`red`**    | <img src="http://placehold.it/40/E74C3C/E74C3C"/> | **`darkRed`**    | <img src="http://placehold.it/40/C0392C/C0392C"/>
**`orange`** | <img src="http://placehold.it/35/E67E21/E67E21"/> | **`darkOrange`** | <img src="http://placehold.it/35/D35400/D35400"/> 
**`yellow`** | <img src="http://placehold.it/30/D35400/D35400"/> | **`darkYellow`** | <img src="http://placehold.it/30/FFA801/FFA801"/>
**`sand`**   | <img src="http://placehold.it/25/F0DEB4/F0DEB4"/> | **`darkSand`**   | <img src="http://placehold.it/25/D5C295/D5C295"/>
**`navy`**   | <img src="http://placehold.it/25/34495E/34495E"/> | **`darkNavy`**   | <img src="http://placehold.it/25/2C3E50/2C3E50"/>
**`black`**  | <img src="http://placehold.it/25/2B2B2B/2B2B2B"/> | **`darkBlack`**  | <img src="http://placehold.it/25/262626/262626"/>

###### Material Kit ######

A simple go service to generate a 1x1 image of a given color.

http://mslabs-color-swatch.herokuapp.com/ccc => <img src="http://mslabs-color-swatch.herokuapp.com/fea" width=40 height=40 style="vertical-align: middle"/>