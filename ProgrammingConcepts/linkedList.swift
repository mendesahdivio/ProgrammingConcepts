//
//  linkedList.swift
//  ProgrammingConcepts
//
//  Created by ahdivio mendes on 04/08/22.
//

import Foundation

class linkedList<Value> {
    var head: Node<Value>?
    var tail: Node<Value>?
    
    init(){}
    
    //MARK: Cheks if the linked list is empty 
    public var isEmpty: Bool {
        guard head != nil else {
            return true
        }
        return false
    }
    
    //MARK: pushed into the list head first
    func pushIntoList(node: Value) {
        let newNode = Node.init(value: node)
        newNode.nextNode = head
        self.head = newNode
        
        if tail == nil {
            self.tail = head
        }
    }
    
    //MARK: iteratively goes through the size of the linked list
    func size() -> Int {
        var currenthead: Node<Value>?
        var count = 0
        currenthead = head
        while currenthead != nil {
            count = count + 1
            currenthead = currenthead?.nextNode
        }
        return count
    }
}

extension linkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Empty linked list"
        }
        return "This is the current head: " + String(describing: head)
    }
}
