import PreviewSnapshotsTesting
import XCTest

@testable import Avatar

final class AvatarTests: XCTestCase {
  func test_snapshots() {
    AvatarPreviews.snapshots.assertSnapshots()
  }
}
