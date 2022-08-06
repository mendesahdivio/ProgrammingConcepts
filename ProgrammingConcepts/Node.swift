//
//  Node.swift
//  ProgrammingConcepts
//
//  Created by ahdivio mendes on 04/08/22.
//

import Foundation
class Node<Value>: Equatable{
    static func == (lhs: Node<Value>, rhs: Node<Value>) -> Bool {
        return true
    }
    
   public var value: Value
   public var nextNode: Node?
   
    init(value:Value, nextNode: Node) {
        self.value = value
        self.nextNode = nextNode
    }
    
    init(value:Value) {
        self.value = value
        
    }
}

extension Node:CustomStringConvertible {
   public var description: String {
       guard let nextNode = nextNode else {
           return "Nil Node"
       }
       return "this is the next node : " + String(describing: nextNode.description)
    }
}
