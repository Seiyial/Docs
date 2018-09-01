# REACT NATIVE

## 1. Setting up a React Native IDE

This guide is written for iOS. For you if you're serious about bringing your React Native App to production.

### Pre-Requisites

1. Ensure Node and NPM/Yarn is installed.

    ```bash
    $ node -v
    $ yarn -v # replace all yarn with npm if using npm
    ```

2. Ensure you have a proper IDE already: a decent usable Terminal with npm/yarn global installs connected to PATH and a Code Editor (or vim if you primarily use it).



### Install the CLIs

```bash
$ brew install watchman
$ yarn global add react-native-cli create-react-native-app # not `react-native`
$ gem install cocoapods # requires RubyGems installed; may not be required if you're using create-react-native-app all the way
```



### Install `xcode-select`

Required for... everything. Xcode is required for some native bundling, and iPhone/iPad simulator.

```bash
$ xcode-select --install
# If prompted to get Xcode, get it; otherwise DO GET it from the App Store
```



### Android Emulator

###### 1. Android Studio

First you ***need*** to install Android Studio.

[Download from this Link](https://developer.android.com/studio/) or google.

Then:

[Click here with advanced guide with pictures](https://hdorgeval.gitbooks.io/setup-your-mac-to-develop-nativescript-apps/content/setup-android-emulator-on-mac-os-x.html)

1. Create a new android project, just get the creation process done, but when required to install SDK/Modules and there is a `emulator` module do install it
2. Then tools > AVD Manager > Create a new emulator based on your likes.
3. Preferably 1 high end, 1 middle, one small ass screen

To run the emulator, double click the item in the list. 

###### 2. Java

Ensure Java is Installed.

```bash
$ java -version # 1.8 is java 8
```



## 2. Creating Your Project 

#### `TYPE 1` (Recommended)

- Best of both worlds (the source world and the Expo world), but not for newbies.
- You get to use all of Expo's features except the cradle.
- Ideal for Agile, building as many features as possible.

```bash
$ create-react-native-app app-name
$ yarn eject
> ExpoKit
$ cd ios
$ pod install # this may take longer than Rails
$ cd ..
$ echo '\n\n# iOS Build/Dependencies\n/ios/pods/' >> .gitignore
```

#### `TYPE 2`

- For newbies.
- As easy as easy can get. Well not really, but yeah, as easy as React Native gets.
- You'll **NOT** be able to use Native Modules.

```bash
$ create-react-native-app app-name
```

#### `TYPE 3`

- If you know what you're doing.
- No Expo. Means no QR Code to Physical Device. Wutt
- If you need Native Modules, don't need the QR code(!?) and/or need to keep the app bundle really really (?) small.

```bash
$ react-native init app-name
```





