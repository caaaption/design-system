import PreviewSnapshotsTesting
import XCTest

@testable import Spinner

final class SpinnerTests: XCTestCase {
  func test_snapshots() {
    SpinnerPreviews.snapshots.assertSnapshots()
  }
}
