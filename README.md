<h1>WddOnboarding iOS SDK</h1>


  [![Language](https://img.shields.io/badge/Swift-5-red?style=plastic)]()
  [![Language](https://img.shields.io/badge/Objective--C-compatible-blue?style=plastic)]()
  [![License](https://img.shields.io/github/license/antinolabsdev/WddOnboarding-SDK-iOS?style=plastic)]()
  
## Requirements

- iOS 10.0+
- Xcode 10.2.1+
- Swift 4.2 or Objective-C

## CocoaPods

To use the Wddonboarding SDK we recommend to use Cocoapods 1.7.0 or later

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate the Wddonboarding SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:


```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

pod 'Wddonboard', :git =>"https://github.com/antinolabsdev/WddOnboarding-SDK-iOS.git"
```

Then, run the following command:

```bash
$ pod install
```

## Usage
First of all, if you don't have an Xcode project yet, create one, then install the SDK following the paragraph `Cocoapods`.

**1)** Navigate to the root directory of your project in Terminal (the directory that contains your .xcodeproj file) using the cd command:
- Create an empty Cartfile with the `touch` command:
```
touch Cartfile
```
- This will create an empty Cartfile in your project. Open the cartfile and add these lines:
```
github "ermalkaleci/CarbonKit"
github "aws-amplify/aws-sdk-ios"
github "jdg/MBProgressHUD" ~> 1.2.0
```

- Close your Cartfile in Xcode and head back to Terminal. Run the following command:
```
carthage update --platform iOS
```

- This instructs Carthage to clone the Git repositories that are specified in the Cartfile, and then build each dependency into a framework.

- A Cartfile.resolved file and a Carthage directory will appear in the same directory where your .xcodeproj or .xcworkspace is.

- Back in Xcode, Go to the project in the Project Navigator. Select the your target, choose the General tab at the top, and scroll down to the Linked Frameworks and Libraries section at the bottom.
- In the Carthage Finder window, navigate into Carthage/Build/iOS. Drag the CarbonKit.framework, MBProgressHUD.framework, AWSCore.framework and AWSRekognition.framework into the Linked Frameworks and Libraries section in Xcode.
- This tells Xcode to link your app to these frameworks, allowing you to make use of them in your own code.
- Next, switch over to Build Phases and add a new Run Script build phase by clicking the + in the top left of the editor. Add the following command:
```
/usr/local/bin/carthage copy-frameworks
```
- Click the + under Input Files and add an entry for each framework:
```
$(SRCROOT)/Carthage/Build/iOS/CarbonKit.framework
$(SRCROOT)/Carthage/Build/iOS/AWSCore.framework
$(SRCROOT)/Carthage/Build/iOS/AWSRekognition.framework
$(SRCROOT)/Carthage/Build/iOS/MBProgressHUD.framework
```


**2)** Import the WddOnboard iOS SDK module in your UIApplicationDelegate subclass:

```
import WddOnboard
```
**3)** Configure a WddOnboard iOS SDK shared instance, in your App Delegate, inside **application:didFinishLaunchingWithOptions:** method:

```
WddOnboard.sharedInstance.configAWS()
```

**If in doubt, you can look at the examples in the demo application.**

### Using WDDOnboarding
**1)** You can use the default floating type button. To add the button on view controller call the method `showWddButton`:

```
WddOnboard.sharedInstance.showWddButton(on: self, position: .Right, color: .cyan, image: UIImage(named: ""))
```
- Here **self** is your current view controller
- Position can be left or right
- Here color and image is optional
- Default color will be blue
- Default image is this flash icon

**2)** Or you can also use your custom button. In that case just use this method in button’s click event:
```
WddOnboard.sharedInstance.openWDD(viewController: self)
```
- here **self** is your current view controller

### Hide Floating Button
You can use this method to hide the floating button `hideBot:`

```
WddOnboard.sharedInstance.hideWddButton()
```

## Contributing

- If you **need help** or you'd like to **ask a general question**
- If you **found a bug**, open a service request.
- If you **have a feature request**, open a service request.
- If you **want to contribute**, submit a pull request.


## Acknowledgements

Made with ❤️ by [Antino Labs](https://www.antino.io/).


## License
WddOnboarding is released under the MIT license. [See LICENSE](https://github.com/antinolabsdev/WddOnboarding-SDK-iOS/blob/master/LICENSE) for details.
