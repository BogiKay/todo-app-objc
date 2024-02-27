//
//  Repl.h
//  todo-app
//
//  Created by Bogusz Kaszowski on 26/02/2024.
//

#ifndef Repl_h
#define Repl_h
#import "ToDoItem.h"

@protocol TodoDataSource <NSObject>

- (NSUInteger) numberOfTodos;
- (void) saveTodo:(ToDoItem*)todo;

@end

@interface Repl : NSObject
- (id)init;
- (void)start;

@property (strong, nonatomic) __block id <TodoDataSource> dataSource;

@end



#endif /* Repl_h */
