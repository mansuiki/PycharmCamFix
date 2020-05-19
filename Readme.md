## How It Works
After macOS 10.14, User must grant permission for each app.\
But some Apps don't work properly `(Example :: Pycharm)`

### This is Solution
1. Find `Bundle ID` for target application that you want to grant permission.
2. `Make new Xcode Project` with found Bundle ID.
3. `Write Code` that grant permission for app.
4. Run Target Application to Check permission.


## Tutorial - With Example
### Step 1 : Clone Repo
```bash
git clone https://github.com/mansuiki/PycharmCamFix
```

### Step 2 : Find Bundle ID
```bash
# 
# This command will print out the `Target Application Bundle ID`.
osascript -e 'id of app "NAME OF TARGET APPLICATION"'

# EXAMPLE
osascript -e 'id of app "Pycharm"'
# OUTPUT
com.jetbrains.pycharm
```

### Step 3 : Open Xcode Project & Set Xcode APP Bundle ID
1. Select Project in project navigator
2. Select General and edit `Bundle Identifier` to `Target Application Bundle ID`
![](1.png)

### Step 4 : Build App & Run
![](2.png)

### Step 5 : Close App & Check
![](3.png)

### Step 6 : Run Example Code in Pycharm
```python
# Example.py
import cv2 as cv

cap = cv.VideoCapture(0)

while True:
    ret, frame = cap.read()
    cv.imshow("cam", frame)
    if cv.waitKey(5) == ord('q'):
        break

cv.destroyAllWindows()
cap.release()
```


## Tutorial - Without Example
### Step 1 : Find Bundle ID
```bash
# 
# This command will print out the `Target Application Bundle ID`.
osascript -e 'id of app "NAME OF TARGET APPLICATION"'

# EXAMPLE
osascript -e 'id of app "Pycharm"'
# OUTPUT
com.jetbrains.pycharm
```

### Step 2 : Make new Xcode Project & Edit Bundle ID
1. Open Xcode
2. `FILE > NEW > PROJECT > macOS > App` // Make new Project
3. Select Project in project navigator
4. Select General and edit `Bundle Identifier` to `Target Application Bundle ID`

### Step 3 : Edit Info.plist
1. Open `Info.plist`
2. `Right-click > Check "Raw Keys & Values" > "Add Row"`
3. KEY : `NSCameraUsageDescription` , Value : `I want to use Camera`

### Step 4 : Write Code
[Requesting Authorization for Media Capture on macOS](https://developer.apple.com/documentation/avfoundation/cameras_and_media_capture/requesting_authorization_for_media_capture_on_macos)
```text
Write Some Code
IF you don't know what to write, please use Example Project
```

### Step 5 : Run & Check
DONE!
