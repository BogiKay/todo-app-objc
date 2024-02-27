//
//  Repl.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#import <Foundation/Foundation.h>
#import "Repl.h"
#import "ToDoItem.h"
#import "Storage.h"


void (^createToDoItem)(void) = ^{
    char content[200] = {0};

    NSLog(@"Provide a todo content\n");
    scanf("%[^\n]s", content);
    fpurge(stdin);

    NSString *todoContent = [NSString stringWithCString:content encoding:1];
    
    ToDoItem *newTodo = [[ToDoItem alloc] initWithContent:todoContent];
    
    NSLog(@"created a new todo item with content: %@", [newTodo getContent]);
    
};

@implementation Repl
- (id) init
{
    self = [super init];
    
    if (self) {
        self.dataSource = [[Storage alloc] init];
    }
    
    
    return self;
}

- (void)start
{
    NSString* (^getCommandBlock)(void) = ^{
        NSLog(@"Number of todos %lu", [self.dataSource numberOfTodos]);
        
        char command[50] = {0};
        NSLog(@"Provide a command\n");
        
        scanf("%[^\n]s", command);
        fpurge(stdin);

        NSString *commandString = [NSString stringWithCString:command encoding:1];
        
        return commandString;
    };
    
    while (true) {
        NSString *commandStr = [NSString alloc];
        
        commandStr = getCommandBlock();
        
        if ([commandStr isEqualToString:@"exit"]) {
            NSLog(@"Exitting the app. Thanks!\n");
            return;
        }
        
        if ([commandStr isEqualToString:@"addToDo"]) {
            createToDoItem();
        }

        NSLog(@"Executting provided command: %@\n", commandStr);
    }
}

@end


