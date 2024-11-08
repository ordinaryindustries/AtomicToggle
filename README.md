# AtomicToggle
A nostalgic SwiftUI ToggleStyle inspired by the translucent colors of the classic Atomic Purple GameBoy and iMac G3. Add a touch of retro style to your SwiftUI apps with customizable colors and images!

## Features
- Custom Colors: Use any color to match your app’s theme.
- Custom Images: Choose different images for the “on” and “off” states.
- Nostalgic Aesthetics: Inspired by the classic colors of 90s tech.

## Installation

Add AtomicToggle to your project via Swift Package Manager.
1. In Xcode, go to **File > Add Packages**
2. Enter the URL of the repository: https://github.com/ordinaryindustries/AtomicToggle
3. Select your preferred package options and click **Add Package**.
                                                
## Usage
Import AtomicToggle into your SwiftUI file:
```
import AtomicToggle
```

Apply the toggle style to your toggle:
```
Toggle("Nostalgia Mode", isOn: $isOn)
    .toggleStyle(AtomicToggleStyle(color: .purple, onImage: "checkmark", offImage: "xmark"))
```
