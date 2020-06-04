//
//  HelloCordovaTests.swift
//  HelloCordovaTests
//
//  Created by Deepak Singh on 01/06/20.
//

import XCTest
@testable import HelloCordova


class HelloCordovaTests: XCTestCase {

    let sayHello = SayHelloPlugin()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSayHello_result() {
        let result = sayHello.prepareResult()
        let pluginResult = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: "Hey I am Dexter, Hope this helps")
        XCTAssertTrue(result.status == pluginResult?.status)
    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
}



