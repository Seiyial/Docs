# React Native

## Initialisation

```BASH
$ yarn global add react-native-cli create-react-native-app
$ gem install cocoapods # IOS dependency manager, optional for newbies
```

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



