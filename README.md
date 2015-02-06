# objc_imports_sorter

An shell script for sorting ObjC import statements.
Reads input which should be block of Obj-C's import statements and sorts in the next order:

```objective-c
@import Module;

#import <Third>
#import <Party>
#import <Modules>

#import "Projects"
#import "Modules"
```


See [this article](https://stavash.wordpress.com/tag/xcode-tips/) for instructions how to use it with XCode.
