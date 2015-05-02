import XCTest

class DieFaceModelGeneratorTests: XCTestCase {

    let dieFaceModelGenerator = DieFaceModelGenerator()

    func testOne() {
        let model = [
            [false, false, false],
            [false, true, false],
            [false, false, false]
        ]

        XCTAssertEqual(dieFaceModelGenerator.generateModelForValue(1), model)
    }

    func testTwo() {
        let model = [
            [true, false, false],
            [false, false, false],
            [false, false, true]
        ]

        XCTAssertEqual(dieFaceModelGenerator.generateModelForValue(2), model)
    }

    func testThree() {
        let model = [
            [true, false, false],
            [false, true, false],
            [false, false, true]
        ]

        XCTAssertEqual(dieFaceModelGenerator.generateModelForValue(3), model)
    }

    func testFour() {
        let model = [
            [true, false, true],
            [false, false, false],
            [true, false, true]
        ]

        XCTAssertEqual(dieFaceModelGenerator.generateModelForValue(4), model)
    }

    func testFive() {
        let model = [
            [true, false, true],
            [false, true, false],
            [true, false, true]
        ]

        XCTAssertEqual(dieFaceModelGenerator.generateModelForValue(5), model)
    }

    func testSix() {
        let model = [
            [true, false, true],
            [true, false, true],
            [true, false, true]
        ]

        XCTAssertEqual(dieFaceModelGenerator.generateModelForValue(6), model)
    }
}
