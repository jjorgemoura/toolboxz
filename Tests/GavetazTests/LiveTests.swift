@testable import Gavetaz

import ComposableArchitecture
import XCTest

final class LiveTests: XCTestCase {
    private static let userdefaultsPrefix = "com.jjorgemoura.gavetaz"
    private static var testUserDefaults: UserDefaults!

    private let nonPresentKey = "nonPresentKey"
    private let removeKey = "removeKey"
    private let boolReadKey = "boolReadKey"
    private let boolWriteKey = "boolWriteKey"
    private let dataReadKey = "dataReadKey"
    private let dataWriteKey = "dataWriteKey"
    private let doubleReadKey = "doubleReadKey"
    private let doubleWriteKey = "doubleWriteKey"
    private let integerReadKey = "integerReadKey"
    private let integerWriteKey = "integerWriteKey"

    override static func setUp() {
        super.setUp()

        let suiteName = "\(userdefaultsPrefix).\(#file)"
        testUserDefaults = UserDefaults(suiteName: suiteName)
        testUserDefaults.removePersistentDomain(forName: suiteName)
    }

    override static func tearDown() {
        super.tearDown()
    }

    func testWhenAskForABoolNotPresentThenGetsDefaultFalse() {
        let sut = Gavetaz.live(userDefaults: LiveTests.testUserDefaults)

        let value = sut.boolWithKey(nonPresentKey)

        XCTAssertFalse(value)
    }

    //    func testWhenAskForABoolPresentThenGetsValue() {
    //        let sut = Gavetaz.live(userDefaults: testUserDefaults)
    //
    //        let effect = sut.setBool(true, boolReadKey)
    //        let value = sut.boolForKey(boolReadKey)
    //
    //        XCTAssertTrue(value)
    //    }

    func testWhenAskForADataNotPresentThenGetsDefaultFalse() {
        let sut = Gavetaz.live(userDefaults: LiveTests.testUserDefaults)

        let value = sut.dataWithKey(nonPresentKey)

        XCTAssertNil(value)
    }

    //    func testWhenAskForADataPresentThenGetsValue() {
    //        let sut = Gavetaz.live(userDefaults: testUserDefaults)
    //
    //        let value = sut.dataForKey(dataReadKey)
    //
    //        XCTAssertNil(value)
    //    }

    func testWhenAskForADoubleNotPresentThenGetsDefaultFalse() {
        let sut = Gavetaz.live(userDefaults: LiveTests.testUserDefaults)

        let value = sut.doubleWithKey(nonPresentKey)

        XCTAssertEqual(value, 0.0)
    }

    //    func testWhenAskForADoublePresentThenGetsValue() {
    //        let sut = Gavetaz.live(userDefaults: testUserDefaults)
    //
    //        let value = sut.doubleForKey(doubleReadKey)
    //
    //        XCTAssertNil(value)
    //    }

    func testWhenAskForAIntegerNotPresentThenGetsDefaultFalse() {
        let sut = Gavetaz.live(userDefaults: LiveTests.testUserDefaults)

        let value = sut.integerWithKey(nonPresentKey)

        XCTAssertEqual(value, 0)
    }

    //    func testWhenAskForAIntegerPresentThenGetsValue() {
    //        let sut = Gavetaz.live(userDefaults: testUserDefaults)
    //
    //        let value = sut.integerForKey(integerReadKey)
    //
    //        XCTAssertNil(value)
    //    }
}
