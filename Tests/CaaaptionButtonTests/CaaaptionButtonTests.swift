import PreviewSnapshotsTesting
import XCTest

@testable import CaaaptionButton

final class CaaaptionButtonTests: XCTestCase {
  func test_snapshots() {
    CaaaptionButtonPreviews.snapshots.assertSnapshots()
  }
}
