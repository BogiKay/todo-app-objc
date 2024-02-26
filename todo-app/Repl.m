//
//  Repl.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#import <Foundation/Foundation.h>
#import "Repl.h"

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
        scanf("%[^\n]@", command);
        
        if ([command isEqualToString:@"exit"]) {
            return;
        }
    }
}

@end
