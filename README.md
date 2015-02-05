# SwiftMaster

Set of extensions, classes, vendor additions, etc. written in Swift 

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
Color | Ex. | Color | Ex. | Color | Ex. | Color | Ex.
----- | --- | ----- | --- | ----- | --- | ----- | ---
**`red`**        | <img src="/Colors/Flat/E74C3C/E74C3C.png"/> | **`darkRed`**        | <img src="/Colors/Flat/C0392C/C0392C.png"/> | **`purple`**     | <img src="/Colors/Flat/745EC5/745EC5.png"/> | **`darkPurple`**     | <img src="/Colors/Flat/5B48A2/5B48A2.png"/>
**`orange`**     | <img src="/Colors/Flat/E67E21/E67E21.png"/> | **`darkOrange`**     | <img src="/Colors/Flat/D35400/D35400.png"/> | **`watermelon`** | <img src="/Colors/Flat/EF717A/EF717A.png"/> | **`darkWatermelon`** | <img src="/Colors/Flat/D95459/D95459.png"/> 
**`yellow`**     | <img src="/Colors/Flat/FFCD01/FFCD01.png"/> | **`darkYellow`**     | <img src="/Colors/Flat/FFA801/FFA801.png"/> | **`plum`**       | <img src="/Colors/Flat/5E345E/5E345E.png"/> | **`darkPlum`**       | <img src="/Colors/Flat/4F2B4F/4F2B4F.png"/> 
**`sand`**       | <img src="/Colors/Flat/F0DEB4/F0DEB4.png"/> | **`darkSand`**       | <img src="/Colors/Flat/D5C295/D5C295.png"/> | **`coffee`**     | <img src="/Colors/Flat/A38671/A38671.png"/> | **`darkCoffee`**     | <img src="/Colors/Flat/8E725E/8E725E.png"/> 
**`navy`**       | <img src="/Colors/Flat/34495E/34495E.png"/> | **`darkNavy`**       | <img src="/Colors/Flat/2C3E50/2C3E50.png"/> | **`blue`**       | <img src="/Colors/Flat/5065A1/5065A1.png"/> | **`darkBlue`**       | <img src="/Colors/Flat/394C81/394C81.png"/>
**`black`**      | <img src="/Colors/Flat/2B2B2B/2B2B2B.png"/> | **`darkBlack`**      | <img src="/Colors/Flat/262626/262626.png"/> | **`brown`**      | <img src="/Colors/Flat/5E4534/5E4534.png"/> | **`darkBrown`**      | <img src="/Colors/Flat/503B2C/503B2C.png"/> 
**`magenta`**    | <img src="/Colors/Flat/9B59B6/9B59B6.png"/> | **`darkMagenta`**    | <img src="/Colors/Flat/8E44AD/8E44AD.png"/> | **`pink`**       | <img src="/Colors/Flat/F47BC3/F47BC3.png"/> | **`darkPink`**       | <img src="/Colors/Flat/D45C9E/D45C9E.png"/> 
**`teal`**       | <img src="/Colors/Flat/3A6F81/3A6F81.png"/> | **`darkTeal`**       | <img src="/Colors/Flat/356272/356272.png"/> | **`maroon`**     | <img src="/Colors/Flat/79302A/79302A.png"/> | **`darkMaroon`**     | <img src="/Colors/Flat/662621/662621.png"/> 
**`sky`**        | <img src="/Colors/Flat/3498DB/3498DB.png"/> | **`darkSky`**        | <img src="/Colors/Flat/2980B9/2980B9.png"/> | **`powder`**     | <img src="/Colors/Flat/B8C9F2/B8C9F2.png"/> | **`darkPowder`**     | <img src="/Colors/Flat/99ABD5/99ABD5.png"/> 
**`green`**      | <img src="/Colors/Flat/2ECC71/2ECC71.png"/> | **`darkGreen`**      | <img src="/Colors/Flat/27AE60/27AE60.png"/> | **`forest`**     | <img src="/Colors/Flat/355F41/355F41.png"/> | **`darkForest`**     | <img src="/Colors/Flat/2D5036/2D5036.png"/>
**`mint`**       | <img src="/Colors/Flat/1ABC9C/1ABC9C.png"/> | **`darkMint`**       | <img src="/Colors/Flat/17A085/17A085.png"/> | **`lime`**       | <img src="/Colors/Flat/A5C63B/A5C63B.png"/> | **`darkLime`**       | <img src="/Colors/Flat/8EB021/8EB021.png"/> 
**`white`**      | <img src="/Colors/Flat/ECF0F1/ECF0F1.png"/> | **`darkWhite`**      | <img src="/Colors/Flat/BDC3C7/BDC3C7.png"/> | **`gray`**       | <img src="/Colors/Flat/95A5A6/95A5A6.png"/> | **`darkGray`**       | <img src="/Colors/Flat/C0392C/C0392C.png"/>

###### Material ######
Color | Ex. | Color | Ex. | Color | Ex. | Color | Ex.
----- | --- | ----- | --- | ----- | --- | ----- | ---
**`red`**          | <img src="/Colors/Material/F44336/F44336"/>   | **`pink`**         | <img src="/Colors/Material/E91E63/E91E63"/> | **`purple`** | <img src="/Colors/Material/9C27B0/9C27B0"/> | **`deepOrange`** | <img src="/Colors/Material/FF5722/FF5722"/>
**`deepPurple`**   | <img src="/Colors/Material/67AB70/67AB70"/>   | **`indigo`**       | <img src="/Colors/Material/3F51B5/3F51B5"/> | **`blue`**   | <img src="/Colors/Material/2196F3/2196F3"/> | **`brown`**      | <img src="/Colors/Material/795548/795548"/>
**`lightBlue`**    | <img src="/Colors/Material/03A9F4/03A9F4"/>   | **`cyan`**         | <img src="/Colors/Material/00BCD4/00BCD4"/> | **`teal`**   | <img src="/Colors/Material/009688/009688"/> | **`grey`**       | <img src="/Colors/Material/9E9E9E/9E9E9E"/>
**`green`**        | <img src="/Colors/Material/4CAF50/4CAF50"/>   | **`lightGreen`**   | <img src="/Colors/Material/8BC34A/8BC34A"/> | **`lime`**   | <img src="/Colors/Material/CDDC39/CDDC39"/> | **`blueGrey`**   | <img src="/Colors/Material/607D8B/607D8B"/>
**`yellow`**       | <img src="/Colors/Material/FFEB3B/FFEB3B"/>   | **`amber`**        | <img src="/Colors/Material/FFC107/FFC107"/> | **`orange`** | <img src="/Colors/Material/FF9800/FF9800"/> | 

