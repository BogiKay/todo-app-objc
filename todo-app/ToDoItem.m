//
//  ToDoItem.m
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#import <Foundation/Foundation.h>
#import "ToDoItem.h"

@implementation ToDoItem
- (void)markAsDone
{
    done = true;
}

- (NSString *)getContent
{
    return content;
}

- (NSDate *) getDoneAt
{
    return doneAt;
}

- (id) init
{
    self = [super init];
    
    if (self) {
        done = false;
        content = @"Not specified task";
        doneAt = nil;
    }
    
    return self;
}
@end
