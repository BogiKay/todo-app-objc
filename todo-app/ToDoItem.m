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

- (id) initWithContent:(NSString *)todo
{
    self = [super init];
    
    if (self) {
        content = todo;
        done = false;
        doneAt = nil;
    }
    
    return self;
}

- (bool) isDone
{
    return done;
}

+ (instancetype) initWithContent:(NSString *)contentOfTask
{
    ToDoItem *item = [[ToDoItem alloc] initWithContent:contentOfTask];
    
    return item;
}

- (id) initWithContent:(NSString *)task andStatus:(bool)status
{
    self = [super init];
    
    if (self) {
        content = task;
        done = status;
        doneAt = nil;
    }
    
    return self;
}
@end
