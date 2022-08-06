//
//  Stacks.swift
//  ProgrammingConcepts
//
//  Created by ahdivio mendes on 06/08/22.
//

import Foundation

class Stack {
    
    //enums for stack operations
    enum stackOperations: CustomStringConvertible {
        case insertSucess
        case insertFaild
        case emptyStack
        case popSuccessFul
        
        var description: String {
            switch self {
            case .insertSucess:
                return "Sucessfully inserted new element to the stack"
            case .insertFaild:
                return "Faild to insert elemet as stack is already full"
            case .emptyStack:
                return "faild to pop from stack as stack is empty "
            case .popSuccessFul:
                return "Pop is sucessfull : "
            }
        }
    }
    
    
    
    //creates a model for stack
    private var PrivatestackArry:Array<Any> = []
    private var limit: Int?
    //sets the top variable to -1
    private var top: Int = -1
    
    
    public func setSizeOfStack(count size :Int) {
      limit = size
    }
    
    
    //returns the data of the topmost value in the stack
    public func peep() -> Any {
        guard let topValue = PrivatestackArry.first else {
            return top
        }
        return topValue
    }
    
    //pushes the new element in the stack
    public func push(value:Any) -> String {
        guard (limit == PrivatestackArry.count) else {
            PrivatestackArry.insert(value, at: 0)
            return stackOperations.insertSucess.description
        }
        return stackOperations.insertFaild.description
    }
    
    //pops the element from the stack
    public func pop() -> Any {
        guard let firstElement = PrivatestackArry.removeFirst() as? Any else {
            return stackOperations.emptyStack.description
        }
        limit! -= 1
        print(stackOperations.popSuccessFul.description)
        return firstElement
    }
}
