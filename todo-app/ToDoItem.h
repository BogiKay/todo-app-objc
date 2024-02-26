//
//  ToDoItem.h
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#ifndef ToDoItem_h
#define ToDoItem_h

@interface ToDoItem : NSObject
{
    bool done;
    NSDate *doneAt;
    NSString *content;
}

- (void)markAsDone;
- (NSString *)getContent;
- (NSDate *)getDoneAt;
- (id) init;

@end
#endif /* ToDoItem_h */
