//
//  RandomUserTests.swift
//  RandomUserTests
//
//  Created by Zane Myers on 3/18/25.
//

import XCTest
@testable import RandomUser

final class RandomUserTests: XCTestCase {
    func testUserModel() throws {
        let jsonData = getTestJSONData()
        
        do {
            _ = try JSONDecoder().decode(Response.self, from: jsonData)
        } catch {
            XCTFail("Failed to decode json into the model: \(error)")
        }
    }
    
    private func getTestJSONData() -> Data {
        
        if let testBundle = Bundle(for: type(of: self)) {
            do {
                let contents = try FileManager.default.contentsOfDirectory(atPath: resourcePath)
                print("Bundle.main contents:\n", contents.joined(separator: "\n"))
            } catch {
                print("Error accessing bundle contents: \(error)")
            }
        } else {
            print("Bundle.main has no resource path.")
        }
        
        
        
        guard let path = Bundle.main.path(forResource: "randomUsers", ofType: "json") else {
            fatalError("randomUsers.json file not found")
        }
        let internalUrl = URL(fileURLWithPath: path)
        return try! Data(contentsOf: internalUrl)
    }

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
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
