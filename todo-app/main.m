//
//  main.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 21/02/2024.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ToDoItem *todo1 = [[ToDoItem alloc] init];
        
        NSLog(@"Todo item 1 %@", [todo1 getContent]);
        
        
    }
    return 0;
}
