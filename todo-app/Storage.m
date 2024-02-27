//
//  Storage.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 27/02/2024.
//

#import <Foundation/Foundation.h>
#import "Storage.h"
#import "Repl.h"

@implementation Storage
- (NSUInteger) numberOfTodos
{
    NSLog(@"numberOfTodos called");
    return 5;
}

- (void) saveTodo:(ToDoItem *)todo
{
    
}

@end
