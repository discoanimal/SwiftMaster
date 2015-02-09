# SwiftMaster

Set of extensions, classes, vendor additions, etc. written in Swift 

# Extensions #

## UI ##

### Color ###

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
**`red`**        | <img src="/colors/Flat/E74C3C/E74C3C.png"/> | **`darkRed`**        | <img src="/colors/Flat/C0392C/C0392C.png"/> | **`purple`**     | <img src="/colors/Flat/745EC5/745EC5.png"/> | **`darkPurple`**     | <img src="/colors/Flat/5B48A2/5B48A2.png"/>
**`orange`**     | <img src="/colors/Flat/E67E21/E67E21.png"/> | **`darkOrange`**     | <img src="/colors/Flat/D35400/D35400.png"/> | **`watermelon`** | <img src="/colors/Flat/EF717A/EF717A.png"/> | **`darkWatermelon`** | <img src="/colors/Flat/D95459/D95459.png"/> 
**`yellow`**     | <img src="/colors/Flat/FFCD01/FFCD01.png"/> | **`darkYellow`**     | <img src="/colors/Flat/FFA801/FFA801.png"/> | **`plum`**       | <img src="/colors/Flat/5E345E/5E345E.png"/> | **`darkPlum`**       | <img src="/colors/Flat/4F2B4F/4F2B4F.png"/> 
**`sand`**       | <img src="/colors/Flat/F0DEB4/F0DEB4.png"/> | **`darkSand`**       | <img src="/colors/Flat/D5C295/D5C295.png"/> | **`coffee`**     | <img src="/colors/Flat/A38671/A38671.png"/> | **`darkCoffee`**     | <img src="/colors/Flat/8E725E/8E725E.png"/> 
**`navy`**       | <img src="/colors/Flat/34495E/34495E.png"/> | **`darkNavy`**       | <img src="/colors/Flat/2C3E50/2C3E50.png"/> | **`blue`**       | <img src="/colors/Flat/5065A1/5065A1.png"/> | **`darkBlue`**       | <img src="/colors/Flat/394C81/394C81.png"/>
**`black`**      | <img src="/colors/Flat/2B2B2B/2B2B2B.png"/> | **`darkBlack`**      | <img src="/colors/Flat/262626/262626.png"/> | **`brown`**      | <img src="/colors/Flat/5E4534/5E4534.png"/> | **`darkBrown`**      | <img src="/colors/Flat/503B2C/503B2C.png"/> 
**`magenta`**    | <img src="/colors/Flat/9B59B6/9B59B6.png"/> | **`darkMagenta`**    | <img src="/colors/Flat/8E44AD/8E44AD.png"/> | **`pink`**       | <img src="/colors/Flat/F47BC3/F47BC3.png"/> | **`darkPink`**       | <img src="/colors/Flat/D45C9E/D45C9E.png"/> 
**`teal`**       | <img src="/colors/Flat/3A6F81/3A6F81.png"/> | **`darkTeal`**       | <img src="/colors/Flat/356272/356272.png"/> | **`maroon`**     | <img src="/colors/Flat/79302A/79302A.png"/> | **`darkMaroon`**     | <img src="/colors/Flat/662621/662621.png"/> 
**`sky`**        | <img src="/colors/Flat/3498DB/3498DB.png"/> | **`darkSky`**        | <img src="/colors/Flat/2980B9/2980B9.png"/> | **`powder`**     | <img src="/colors/Flat/B8C9F2/B8C9F2.png"/> | **`darkPowder`**     | <img src="/colors/Flat/99ABD5/99ABD5.png"/> 
**`green`**      | <img src="/colors/Flat/2ECC71/2ECC71.png"/> | **`darkGreen`**      | <img src="/colors/Flat/27AE60/27AE60.png"/> | **`forest`**     | <img src="/colors/Flat/355F41/355F41.png"/> | **`darkForest`**     | <img src="/colors/Flat/2D5036/2D5036.png"/>
**`mint`**       | <img src="/colors/Flat/1ABC9C/1ABC9C.png"/> | **`darkMint`**       | <img src="/colors/Flat/17A085/17A085.png"/> | **`lime`**       | <img src="/colors/Flat/A5C63B/A5C63B.png"/> | **`darkLime`**       | <img src="/colors/Flat/8EB021/8EB021.png"/> 
**`white`**      | <img src="/colors/Flat/ECF0F1/ECF0F1.png"/> | **`darkWhite`**      | <img src="/colors/Flat/BDC3C7/BDC3C7.png"/> | **`gray`**       | <img src="/colors/Flat/95A5A6/95A5A6.png"/> | **`darkGray`**       | <img src="/colors/Flat/C0392C/C0392C.png"/>

###### Material ######
Color | Ex. | Color | Ex. | Color | Ex. | Color | Ex.
----- | --- | ----- | --- | ----- | --- | ----- | ---
**`red`**          | <img src="/colors/Material/F44336/F44336"/>   | **`pink`**         | <img src="/colors/Material/E91E63/E91E63"/> | **`purple`** | <img src="/colors/Material/9C27B0/9C27B0"/> | **`deepOrange`** | <img src="/colors/Material/FF5722/FF5722"/>
**`deepPurple`**   | <img src="/colors/Material/67AB70/67AB70"/>   | **`indigo`**       | <img src="/colors/Material/3F51B5/3F51B5"/> | **`blue`**   | <img src="/colors/Material/2196F3/2196F3"/> | **`brown`**      | <img src="/colors/Material/795548/795548"/>
**`lightBlue`**    | <img src="/colors/Material/03A9F4/03A9F4"/>   | **`cyan`**         | <img src="/colors/Material/00BCD4/00BCD4"/> | **`teal`**   | <img src="/colors/Material/009688/009688"/> | **`grey`**       | <img src="/colors/Material/9E9E9E/9E9E9E"/>
**`green`**        | <img src="/colors/Material/4CAF50/4CAF50"/>   | **`lightGreen`**   | <img src="/colors/Material/8BC34A/8BC34A"/> | **`lime`**   | <img src="/colors/Material/CDDC39/CDDC39"/> | **`blueGrey`**   | <img src="/colors/Material/607D8B/607D8B"/>
**`yellow`**       | <img src="/colors/Material/FFEB3B/FFEB3B"/>   | **`amber`**        | <img src="/colors/Material/FFC107/FFC107"/> | **`orange`** | <img src="/colors/Material/FF9800/FF9800"/> | 

### NavigationBar ###

``` swift
// UINavigationBar Init
let navBar = UINavigationBar(frame: Rect)
navBar.hideBottomHairline() // remove bottom shadow
navBar.showBottomHairline() // add bottom shadow 

```

### ToolBar ###

``` swift
// UIToolBar Init
let tabBar = UIToolBar(...)
navBar.hideHairline() // remove top shadow
navBar.showHairline() // add top shadow 

```

### Image ###

``` swift
// UIImage

```

### ImageView ###

``` swift
// UIImageView

```

### Font Icons ###

``` swift
//  Google Icons
cell.iconLabel.font = gFont
cell.iconLabel.text = GoogleIcon.e606
cell.iconLabel.textColor = UIColor.Flat.white

//  Font Awesome Icons
cell.iconLabel.font = iconFont
cell.iconLabel.text = "\u{f0b1}"
cell.iconLabel.textColor = UIColor.Flat.white

```

###### Google Material Icons ######
http://google.github.io/material-design-icons/

###### FontAwesome Icons ######
http://google.github.io/material-design-icons/


