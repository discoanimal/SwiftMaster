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
**`red`**        | <img src="colors/E74C3C/E74C3C.png"/> | **`darkRed`**        | <img src="/colors/C0392C/C0392C.png"/>
**`orange`**     | <img src="http://placehold.it/30/E67E21/E67E21"/> | **`darkOrange`**     | <img src="http://placehold.it/30/D35400/D35400"/> 
**`yellow`**     | <img src="http://placehold.it/30/FFCD01/FFCD01"/> | **`darkYellow`**     | <img src="http://placehold.it/30/FFA801/FFA801"/>
**`sand`**       | <img src="http://placehold.it/30/F0DEB4/F0DEB4"/> | **`darkSand`**       | <img src="http://placehold.it/30/D5C295/D5C295"/>
**`navy`**       | <img src="http://placehold.it/30/34495E/34495E"/> | **`darkNavy`**       | <img src="http://placehold.it/30/2C3E50/2C3E50"/>
**`black`**      | <img src="http://placehold.it/30/2B2B2B/2B2B2B"/> | **`darkBlack`**      | <img src="http://placehold.it/30/262626/262626"/>
**`magenta`**    | <img src="http://placehold.it/30/9B59B6/9B59B6"/> | **`darkMagenta`**    | <img src="http://placehold.it/30/8E44AD/8E44AD"/>
**`teal`**       | <img src="http://placehold.it/30/3A6F81/3A6F81"/> | **`darkTeal`**       | <img src="http://placehold.it/30/356272/356272"/>
**`sky`**        | <img src="http://placehold.it/30/3498DB/3498DB"/> | **`darkSky`**        | <img src="http://placehold.it/30/2980B9/2980B9"/> 
**`green`**      | <img src="http://placehold.it/30/2ECC71/2ECC71"/> | **`darkGreen`**      | <img src="http://placehold.it/30/27AE60/27AE60"/>
**`mint`**       | <img src="http://placehold.it/30/1ABC9C/1ABC9C"/> | **`darkMint`**       | <img src="http://placehold.it/30/17A085/17A085"/> 
**`white`**      | <img src="http://placehold.it/30/ECF0F1/ECF0F1"/> | **`darkWhite`**      | <img src="http://placehold.it/30/BDC3C7/BDC3C7"/>
**`gray`**       | <img src="http://placehold.it/30/95A5A6/95A5A6"/> | **`darkGray`**       | <img src="http://placehold.it/30/C0392C/C0392C"/>
**`forest`**     | <img src="http://placehold.it/30/355F41/355F41"/> | **`darkForest`**     | <img src="http://placehold.it/30/2D5036/2D5036"/>
**`purple`**     | <img src="http://placehold.it/30/745EC5/745EC5"/> | **`darkPurple`**     | <img src="http://placehold.it/30/5B48A2/5B48A2"/>
**`brown`**      | <img src="http://placehold.it/30/5E4534/5E4534"/> | **`darkBrown`**      | <img src="http://placehold.it/30/503B2C/503B2C"/> 
**`plum`**       | <img src="http://placehold.it/30/5E345E/5E345E"/> | **`darkPlum`**       | <img src="http://placehold.it/30/4F2B4F/4F2B4F"/> 
**`watermelon`** | <img src="http://placehold.it/30/EF717A/EF717A"/> | **`darkWatermelon`** | <img src="http://placehold.it/30/D95459/D95459"/> 
**`lime`**       | <img src="http://placehold.it/30/A5C63B/A5C63B"/> | **`darkLime`**       | <img src="http://placehold.it/30/8EB021/8EB021"/> 
**`pink`**       | <img src="http://placehold.it/30/F47BC3/F47BC3"/> | **`darkPink`**       | <img src="http://placehold.it/30/D45C9E/D45C9E"/> 
**`maroon`**     | <img src="http://placehold.it/30/79302A/79302A"/> | **`darkMaroon`**     | <img src="http://placehold.it/30/662621/662621"/> 
**`coffee`**     | <img src="http://placehold.it/30/A38671/A38671"/> | **`darkCoffee`**     | <img src="http://placehold.it/30/8E725E/8E725E"/> 
**`powder`**     | <img src="http://placehold.it/30/B8C9F2/B8C9F2"/> | **`darkPowder`**     | <img src="http://placehold.it/30/99ABD5/99ABD5"/> 
**`blue`**       | <img src="http://placehold.it/30/5065A1/5065A1"/> | **`darkBlue`**       | <img src="http://placehold.it/30/394C81/394C81"/>

###### Material Kit ######

A simple go service to generate a 1x1 image of a given color.

http://mslabs-color-swatch.herokuapp.com/ccc => <img src="http://mslabs-color-swatch.herokuapp.com/fea" width=40 height=40 style="vertical-align: middle"/>