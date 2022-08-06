//
//  LibraryTest.swift
//  LibraryTest
//
//  Created by ahdivio mendes on 04/08/22.
//

import XCTest
@testable import ProgrammingConcepts

class LibraryTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        testLinkedListConcepts()
    
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}



extension LibraryTest {
    
    //MARK: linked list testing function
    func testLinkedListConcepts() {
        let node1 = Node.init(value: 10)
        let node2 = Node.init(value: 20)
        let node3 = Node.init(value: 40)
        node1.nextNode = node2
        node2.nextNode = node3
        print(node1.nextNode as Any)
        print(node2.nextNode?.value as Any)
        XCTAssert(node1.nextNode == node2)
        XCTAssert(node2.nextNode == node3)
        XCTAssert(node1.nextNode == node3)
        
        let linkedList = linkedList<Any>.init()
        linkedList.pushIntoList(node: Node.init(value: 40))
        linkedList.pushIntoList(node: Node.init(value: 30))
        linkedList.pushIntoList(node: Node.init(value: 50))
        if linkedList.isEmpty {
            XCTFail()
            print(true)
        } else {
            XCTAssert(true)
            print(false)
            print("size : \(linkedList.size())")
        }
    }
}
