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
**`red`**        | <img src="/colors/E74C3C/E74C3C.png"/> | **`darkRed`**        | <img src="/colors/C0392C/C0392C.png"/>
**`orange`**     | <img src="/colors/E67E21/E67E21.png"/> | **`darkOrange`**     | <img src="/colors/D35400/D35400.png"/> 
**`yellow`**     | <img src="/colors/FFCD01/FFCD01.png"/> | **`darkYellow`**     | <img src="/colors/FFA801/FFA801.png"/>
**`sand`**       | <img src="/colors/F0DEB4/F0DEB4.png"/> | **`darkSand`**       | <img src="/colors/D5C295/D5C295.png"/>
**`navy`**       | <img src="/colors/34495E/34495E.png"/> | **`darkNavy`**       | <img src="/colors/2C3E50/2C3E50.png"/>
**`black`**      | <img src="/colors/2B2B2B/2B2B2B.png"/> | **`darkBlack`**      | <img src="/colors/262626/262626.png"/>
**`magenta`**    | <img src="/colors/9B59B6/9B59B6.png"/> | **`darkMagenta`**    | <img src="/colors/8E44AD/8E44AD.png"/>
**`teal`**       | <img src="/colors/3A6F81/3A6F81.png"/> | **`darkTeal`**       | <img src="/colors/356272/356272.png"/>
**`sky`**        | <img src="/colors/3498DB/3498DB.png"/> | **`darkSky`**        | <img src="/colors/2980B9/2980B9.png"/> 
**`green`**      | <img src="/colors/2ECC71/2ECC71.png"/> | **`darkGreen`**      | <img src="/colors/27AE60/27AE60.png"/>
**`mint`**       | <img src="/colors/1ABC9C/1ABC9C.png"/> | **`darkMint`**       | <img src="/colors/17A085/17A085.png"/> 
**`white`**      | <img src="/colors/ECF0F1/ECF0F1.png"/> | **`darkWhite`**      | <img src="/colors/BDC3C7/BDC3C7.png"/>
**`gray`**       | <img src="/colors/95A5A6/95A5A6.png"/> | **`darkGray`**       | <img src="/colors/C0392C/C0392C.png"/>
**`forest`**     | <img src="/colors/355F41/355F41.png"/> | **`darkForest`**     | <img src="/colors/2D5036/2D5036.png"/>
**`purple`**     | <img src="/colors/745EC5/745EC5.png"/> | **`darkPurple`**     | <img src="/colors/5B48A2/5B48A2.png"/>
**`brown`**      | <img src="/colors/5E4534/5E4534.png"/> | **`darkBrown`**      | <img src="/colors/503B2C/503B2C.png"/> 
**`plum`**       | <img src="/colors/5E345E/5E345E.png"/> | **`darkPlum`**       | <img src="/colors/4F2B4F/4F2B4F.png"/> 
**`watermelon`** | <img src="/colors/EF717A/EF717A.png"/> | **`darkWatermelon`** | <img src="/colors/D95459/D95459.png"/> 
**`lime`**       | <img src="/colors/A5C63B/A5C63B.png"/> | **`darkLime`**       | <img src="/colors/8EB021/8EB021.png"/> 
**`pink`**       | <img src="/colors/F47BC3/F47BC3.png"/> | **`darkPink`**       | <img src="/colors/D45C9E/D45C9E.png"/> 
**`maroon`**     | <img src="/colors/79302A/79302A.png"/> | **`darkMaroon`**     | <img src="/colors/662621/662621.png"/> 
**`coffee`**     | <img src="/colors/A38671/A38671.png"/> | **`darkCoffee`**     | <img src="/colors/8E725E/8E725E.png"/> 
**`powder`**     | <img src="/colors/B8C9F2/B8C9F2.png"/> | **`darkPowder`**     | <img src="/colors/99ABD5/99ABD5.png"/> 
**`blue`**       | <img src="/colors/5065A1/5065A1.png"/> | **`darkBlue`**       | <img src="/colors/394C81/394C81.png"/>


###### Material ######
Color | Ex. | Color | Ex. | Color | Ex. | Color | Ex.
----- | --- | ----- | --- | ----- | --- | ----- | ---
**`red`**          | <img src="http://placehold.it/30/F44336/F44336"/>   | **`pink`**         | <img src="http://placehold.it/30/E91E63/E91E63"/> | **`purple`** | <img src="http://placehold.it/30/9C27B0/9C27B0"/> | **`deepOrange`** | <img src="http://placehold.it/30/FF5722/FF5722"/>
**`deepPurple`**   | <img src="http://placehold.it/30/67AB70/67AB70"/>   | **`indigo`**       | <img src="http://placehold.it/30/3F51B5/3F51B5"/> | **`blue`**   | <img src="http://placehold.it/30/2196F3/2196F3"/> | **`brown`** | <img src="http://placehold.it/30/795548/795548"/>
**`lightBlue`**    | <img src="http://placehold.it/30/03A9F4/03A9F4"/>   | **`cyan`**         | <img src="http://placehold.it/30/00BCD4/00BCD4"/> | **`teal`**   | <img src="http://placehold.it/30/009688/009688"/> | **`grey`** | <img src="http://placehold.it/30/9E9E9E/9E9E9E"/>
**`green`**        | <img src="http://placehold.it/30/4CAF50/4CAF50"/>   | **`lightGreen`**   | <img src="http://placehold.it/30/8BC34A/8BC34A"/> | **`lime`**   | <img src="http://placehold.it/30/CDDC39/CDDC39"/> | **`blueGrey`** | <img src="http://placehold.it/30/607D8B/607D8B"/>
**`yellow`**       | <img src="http://placehold.it/30/FFEB3B/FFEB3B"/>   | **`amber`**        | <img src="http://placehold.it/30/FFC107/FFC107"/> | **`orange`** | <img src="http://placehold.it/30/FF9800/FF9800"/> | 

