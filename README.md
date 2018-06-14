# Navigation Bar Styles

This iOS project show how to change the Navigation Bar style based on which ViewController is being shown.

Currently the only way I've seen working is through

```
UIApplication.shared.statusBarStyle = .lightContent // White content
UIApplication.shared.statusBarStyle = .default      // Black content
```
