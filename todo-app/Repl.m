//
//  Repl.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#import <Foundation/Foundation.h>
#import "Repl.h"


NSString* (^getCommandBlock)(void) = ^{
    char command[50] = {0};
    NSLog(@"Provide a command\n");
    
    scanf("%[^\n]s", command);
    fpurge(stdin);

    NSString *commandString = [NSString stringWithCString:command encoding:1];
    
    return commandString;
};

@implementation Repl
- (id) init
{
    self = [super init];
    
    return self;
}

- (void)start
{
    NSLog(@"What do you want to do?\n");
    NSString *command;

    while (true) {
        NSString *commandStr = [NSString alloc];
        
        commandStr = getCommandBlock();
        
        if ([commandStr isEqualToString:@"exit"]) {
            NSLog(@"Exitting the app. Thanks!\n");
            return;
        }

        NSLog(@"Executting provided command: %@\n", commandStr);
    }
}

@end


