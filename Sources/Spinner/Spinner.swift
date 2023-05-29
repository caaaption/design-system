import PreviewSnapshots
import SwiftUI

public struct Spinner: View {
  public init() {}

  public var body: some View {
    ProgressView()
      .progressViewStyle(CircularProgressViewStyle())
      .tint(Color.white)
  }
}

struct SpinnerPreviews: PreviewProvider {
  static var previews: some View {
    snapshots
      .previews
      .previewLayout(.sizeThatFits)
  }

  static var snapshots: PreviewSnapshots<Void> {
    PreviewSnapshots(
      configurations: [
        .init(name: "Spinner", state: ()),
      ],
      configure: { _ in
        Spinner()
          .background(Color.black)
          .padding()
      }
    )
  }
}
