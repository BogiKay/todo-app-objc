//
//  main.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 21/02/2024.
//

#import <Foundation/Foundation.h>
#import "myClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        MyClass *mc = [MyClass new];
        [mc setCount:54];
        NSLog(@"Count: %d", [mc getCount]);
        char str[50] = {0};
        NSLog(@"What would you liek to do?\n");
        scanf("%[^\n]s",str);
        NSLog(@"So you want to %s", str);
        
        
    }
    return 0;
}
