//
//  main.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 21/02/2024.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"
#import "Repl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ToDoItem *todo1 = [[ToDoItem alloc] init];
        NSLog(@"Todo item 1 %@", [todo1 getContent]);
        
        NSString *content2 = @"Find out how Objective-C works";
        
        ToDoItem *todo2 = [[ToDoItem alloc] initWithContent:content2];
        
        NSLog(@"Todo item 2 %@", [todo2 getContent]);
        
        ToDoItem *todo3 = [ToDoItem initWithContent:@"Task created using class constructor"];
        
        NSLog(@"Todo item 3 %@", [todo3 getContent]);
        
        ToDoItem *todo4 = [[ToDoItem alloc] initWithContent:@"Start learning objective-c" andStatus:true];
        
        if ([todo4 isDone]) {
            NSLog(@"Todo 4 is done");
        } else {
            NSLog(@"Todo 4 hasn't been done yet");
        }
        
        Repl *r = [[Repl alloc] init];
        [r start];
        
    }
    return 0;
}
