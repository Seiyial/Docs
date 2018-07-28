# Setting up a React Native IDE

### Pre-Requisites

1. Ensure Node and NPM/Yarn is installed.

    ```bash
    $ node -v
    $ yarn -v # replace all yarn with npm if using npm
    ```

2. Ensure you have a proper IDE already: a decent usable Terminal with npm/yarn global installs connected to PATH and a Code Editor (or vim if you primarily use it).



### Install React Native

```bash
$ brew install watchman
$ yarn global add react-native-cli # creates the *correct* `react-native` script
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

