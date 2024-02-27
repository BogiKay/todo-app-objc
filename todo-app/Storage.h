//
//  Storage.h
//  todo-app
//
//  Created by Bogusz Kaszowski on 27/02/2024.
//

#ifndef Storage_h
#define Storage_h
#import "ToDoItem.h"
#import "Repl.h"

@interface Storage : NSObject <TodoDataSource>
{
    NSUInteger todoCount;
}

@end
#endif /* Storage_h */
