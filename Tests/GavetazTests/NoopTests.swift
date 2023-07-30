@testable import Gavetaz

import ComposableArchitecture
import XCTest

final class NoopTests: XCTestCase {
    private let key = "ignored"

    func testWhenAskForABoolThenGetsDefaultFalse() {
        let sut = Gavetaz.noop

        let value = sut.boolWithKey(key)

        XCTAssertFalse(value)
    }

    func testWhenAskForDataThenGetsDefaultNil() {
        let sut = Gavetaz.noop

        let value = sut.dataWithKey(key)

        XCTAssertNil(value)
    }

    func testWhenAskForADoubleThenGetsDefaultZero() {
        let sut = Gavetaz.noop

        let value = sut.doubleWithKey(key)

        XCTAssertEqual(value, 0.0)
    }

    func testWhenAskForAnIntegerThenGetsDefaultZero() {
        let sut = Gavetaz.noop

        let value = sut.integerWithKey(key)

        XCTAssertEqual(value, 0)
    }

    //    func testWhenAskToRemoveAKeyThenGetsDefaultNoneEffect() {
    //        let sut = Gavetaz.noop
    //
    //        let effect = sut.remove(key)
    //
    //        XCTAssertEqual(effect, .none)
    //    }
    //
    //    func testWhenAskToSetBoolThenGetsDefaultNoneEffect() {
    //        let sut = Gavetaz.noop
    //
    //        let effect = sut.setBool(true, key)
    //
    //        XCTAssertEqual(effect, .none)
    //    }
    //
    //    func testWhenAskToSetDataThenGetsDefaultNoneEffect() {
    //        let sut = Gavetaz.noop
    //
    //        let effect = sut.setData(Data(), key)
    //
    //        XCTAssertEqual(effect, .none)
    //    }
    //
    //    func testWhenAskToSetDoubleThenGetsDefaultNoneEffect() {
    //        let sut = Gavetaz.noop
    //
    //        let effect = sut.setDouble(1.5, key)
    //
    //        XCTAssertEqual(effect, .none)
    //    }
    //
    //    func testWhenAskToSetIntThenGetsDefaultNoneEffect() {
    //        let sut = Gavetaz.noop
    //
    //        let effect = sut.setInteger(5, key)
    //
    //        XCTAssertEqual(effect, .none)
    //    }
}
