import Foundation
import XCTest
@testable import Sugar

class TimeIntervalTests: XCTestCase {
    
    internal override func setUp() {
        super.setUp()
    }
    
    internal override func tearDown() {
        super.tearDown()
    }
    
    func testComponent() {
        let interval: Double = 1456983015
        let timeInterval: NSTimeInterval = interval
        
        XCTAssert(timeInterval.second == interval)
        XCTAssert(timeInterval.minute == floor(interval / 60))
        XCTAssert(timeInterval.hour == floor(interval / 3600))
        XCTAssert(timeInterval.day == floor(interval / 86_400))
    }
}
