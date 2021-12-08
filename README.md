<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->


## Animated_Window

Make an animated window.


## Features

* Set an object to orbit
* Set duration to complete on circle
* Set radius to the orbit
* Set a circle to be circled by the orbitting object (Optional)
* Start and stop the animation by manipulating repeat property


## Usage

```
Animated_Window(
      height: 200,
      width: MediaQuery.of(context).size.width,
      color: Colors.purple,
      borderColor: Colors.black,
      borderWidth: 5,
      borderRadius: BorderRadius.only(topLeft:Radius.circular(30) ,topRight:Radius.circular(30) ,bottomLeft:Radius.circular(0) ,bottomRight:Radius.circular(0)),
      alignment: Alignment.bottomCenter,
      animationDuration: Duration(seconds: 1),
      isReverse: false,
      scale: false,
      child: Center(child: Text("Window"),
      ),
    );

```




## Parameters

Here are the accepted parameters :


| Name  | Type | Default Value | Description | 
| ------------- | ------------- | ------------- | ------------- | 
| height  | double | null | Window's height | 
| width  | double | null  | Window's width |
| color  | Color | null  | Window's color  | 
| borderColor  | Color | Colors.transparent  | Width of window's border| 
| borderWidth  | double | 0 | Width of window's border| 
| borderRadius  | BorderRadius | BorderRadius.zero | Radius of window's border| 
| child | Widget | null | Window's content | 
| animationDuration  | Duration | Duration(seconds: 1) | Duration of animated opening and closing | 
| isReverse  | bool | false | Is animation reverse (False=open, true=close)| 
| alignment  | Alignment | Alignment(0,0) | Window's position within scaffold | 
| scale | bool | false | If true, animation type is scaling. Else, it is sizing. | 




## example

| Size  | Scale | 
| ------------- | ------------- | 
| <img src="assets/size.gif" width="250" height="500">  |  <img src="assets/scale.gif" width="250" height="500">  | 













