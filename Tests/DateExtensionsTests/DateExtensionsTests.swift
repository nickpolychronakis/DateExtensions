import XCTest
@testable import DateExtensions

final class DateExtensionsTests: XCTestCase {
    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(DateExtensions().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

// ΜΕΓΑΛΗ ΗΜΕΡΟΜΗΝΙΑ ΚΑΙ ΩΡΑ
final class LongDateAndTimeToStringTests: XCTestCase {
    // Ελέγχω αν δουλεύει σωστά η συνάρτηση
    func testLongDateAndTimeToString() {
        let tempDate = Date(timeIntervalSinceReferenceDate: 0).longDateAndTimeToString()
        let correctResult = "Monday, January 1, 2001 at 2:00 AM"
        XCTAssertEqual(tempDate, correctResult)
    }
    // Ελέγχω αν δουλεύει σωστά η συνάρτηση με προσθήκη χρόνου
    func testLongDateAndTimeToStringWithAddedTime() {
        // Προσθέτω πέντε ώρες για να είμαι σίγουρος ότι δουλεύει σωστά η προσθήκη ώρας
        let tempDate = Date(timeIntervalSinceReferenceDate: 60 * 60 * 5).longDateAndTimeToString()
        let correctResult = "Monday, January 1, 2001 at 7:00 AM"
        XCTAssertEqual(tempDate, correctResult)
    }
}

// ΜΙΚΡΗ ΗΜΕΡΟΜΗΝΙΑ ΚΑΙ ΩΡΑ
final class ShortDateAndTimeToStringTests: XCTestCase {
    // Ελέγχω αν δουλεύει σωστά η συνάρτηση
    func testShortDateAndTimeToString() {
        let tempDate = Date(timeIntervalSinceReferenceDate: 0).shortDateAndTimeToString()
        let correctResult = "1/1/01, 2:00 AM"
        XCTAssertEqual(tempDate, correctResult)
    }
    // Ελέγχω αν δουλεύει σωστά η συνάρτηση με προσθήκη χρόνου
    func testShortDateAndTimeToStringWithAddedTime() {
        // Προσθέτω πέντε ώρες για να είμαι σίγουρος ότι δουλεύει σωστά η προσθήκη ώρας
        let tempDate = Date(timeIntervalSinceReferenceDate: 60 * 60 * 5).shortDateAndTimeToString()
        let correctResult = "1/1/01, 7:00 AM"
        XCTAssertEqual(tempDate, correctResult)
    }
}

// ΗΜΕΡΟΜΗΝΙΑ
final class DateToStringTests: XCTestCase {
    // Ελέγχει την συνάρτηση
    func testDateToString() {
        let tempDate = Date(timeIntervalSinceReferenceDate: 0).dateToString()
        let correctResult = "1/1/01"
        XCTAssertEqual(tempDate, correctResult)
    }
    // Ελέγχω αν δουλεύει σωστά η συνάρτηση με προσθήκη ημερών
    func testDateToStringWithAddedTime() {
        // Προσθέτω πέντε ώρες για να είμαι σίγουρος ότι δουλεύει σωστά η προσθήκη ώρας
        let tempDate = Date(timeIntervalSinceReferenceDate: 0).dateToString(5)
        let correctResult = "1/6/01"
        XCTAssertEqual(tempDate, correctResult)
    }
}

// ΩΡΑ
final class TimeToStringTests: XCTestCase {
    // Ελέγχει την συνάρτηση
    func testTimeToString() {
        let tempDate = Date(timeIntervalSinceReferenceDate: 0).timeToString()
        let correctResult = "2:00 AM"
        XCTAssertEqual(tempDate, correctResult)
    }
    // Ελέγχω αν δουλεύει σωστά η συνάρτηση με προσθήκη χρόνου
    func testTimeToStringWithAddedTime() {
        // Προσθέτω πέντε ώρες για να είμαι σίγουρος ότι δουλεύει σωστά η προσθήκη ώρας
        let tempDate = Date(timeIntervalSinceReferenceDate: 60 * 60 * 5).timeToString()
        let correctResult = "7:00 AM"
        XCTAssertEqual(tempDate, correctResult)
    }
}

// ΣΤΟΙΧΕΙΟ ΗΜΕΡΟΜΗΝΙΑΣ
final class DateComponentTests: XCTestCase {
    // Ελέγχει την συνάρτηση
    func testDateComponent() {
        let tempDate = Date(timeIntervalSinceReferenceDate: 0).dateComponentToString(component: .weekday)
        let correctResult = "Monday"
        XCTAssertEqual(tempDate, correctResult)
    }
}
