# AKAttributedString
An easy to create NSAttributedString instance without NSAttributedStringKey.
## Contents
* How to install：
    * Drag All files in the `AKAttributedString` folder to project
    * Import the main file：`#import "NSMutableAttributedString+AKAttributedString.h"`
* How to use：
```objectivec
label1.attributedText =  [[NSMutableAttributedString alloc] initWithString:@"test123456789"]
    .color([UIColor blueColor])
    .strokeColor([UIColor redColor])
    .strokeWidth(@-2)
    .rangeColor([UIColor blackColor],NSMakeRange(0, 4))
    .font([UIFont systemFontOfSize:30])
    .over;
```