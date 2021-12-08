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


## Orbit

Make an object to orbit around scaffold's center


## Features

* Set an object to orbit
* Set duration to complete one circle
* Set radius to the orbit
* Set a circle to be circled by the orbitting object (Optional)
* Start and stop the animation by manipulating repeat property
* Set initial rotation to the orbitting object

## Usage

```

 Orbit(
   rotate: 10,
   repeat: true,
   completeDuration: Duration(seconds: 3),
   radius: 150,
   circle: Draw_Circle(arcColor: Colors.green, arcWidth: 5, radius: 150, circleColor: Colors.brown),
   child: Image.asset('images/rocket1.png',height: 30, width: 30))


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













