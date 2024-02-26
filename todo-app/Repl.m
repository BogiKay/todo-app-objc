//
//  Repl.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#import <Foundation/Foundation.h>
#import "Repl.h"

char* (^getCommandBlock)(void) = ^{
    char command[50] = {0};
    scanf("%[^\n]s", command);
    NSLog(@"%s", command);
    
    return command;
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
//        scanf("%[^\n]@", command);
        getCommandBlock();
        
        if ([command isEqualToString:@"exit"]) {
            return;
        }
    }
}

@end


