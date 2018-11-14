//
//  APIServiceTests.swift
//  MVVMPlaygroundTests
//
//  Created by Parul Vats on 01/10/2018.
//  Copyright © 2018 MaindoWorks. All rights reserved.
//

import XCTest
@testable import MVVM

class APIServiceTests: XCTestCase {
    
    var sut: APIService?
    
    override func setUp() {
        super.setUp()
        sut = APIService()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testFetchPopularPhotos() {

        // Given A apiservice
        let sut = self.sut!

        // When fetch popular photo
        let expect = XCTestExpectation(description: "callback")

        sut.fetchPopularPhoto(complete: { (success, photos, error) in
            expect.fulfill()
            XCTAssertEqual( photos.count, 13)
            for photo in photos {
                XCTAssertNotNil(photo.id)
            }
            
        })

        wait(for: [expect], timeout: 3.1)
    }
    
}
