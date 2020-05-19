## How It Works
After macOS 10.14, User must grant permission for each app.\
But some Apps don't work properly `(Example :: Pycharm)`

### This is Solution
1. Find `Bundle ID` for target application that you want to grant permission.
2. `Make new Xcode Project` with found Bundle ID.
3. `Write Code` that grant permission for app.
4. Run Target Application to Check permission.

## Tutorials
[Tutorial With Example (For Pycharm)](Tutorial-Example.md)

[Tutorial Without Example (Any Application)](Tutorial-NExample.md)

## Troubleshooting
When is not working...

1. Toggle Permission
    1. Open Target Application
    2. `System Preferences > Security & Privacy > Privacy > Camera`
    3. Just toggle several times (`Check > Uncheck > Check`).
2. Reset Permission & Retry
   1. Open Terminal
   2. `tccutil reset Camera` or `tccutil reset Camera BUNDLE_ID`
   3. It will reset permission status
   4. Retry..
3. Make Issue.. (If I can help, I will help you.)