import PreviewSnapshots
import Spinner
import SwiftUI

public struct CaaaptionButton<Label: View>: View {
  let action: () -> Void
  @ViewBuilder let label: () -> Label
  let loading: Bool

  public init(loading: Bool = false,
    action: @escaping () -> Void,
    @ViewBuilder label: @escaping () -> Label
  ) {
    self.loading = loading
    self.action = action
    self.label = label
  }

  public var body: some View {
    Button(action: action) {
      if loading {
        Spinner()
      } else {
        label()
      }
    }
    .frame(height: 56)
    .padding(.horizontal)
    .bold()
    .foregroundColor(Color.white)
    .background(Color.black)
    .clipShape(Capsule())
    .disabled(loading)
  }
}






struct CaaaptionButtonPreviews: PreviewProvider {
  static var previews: some View {
    snapshots
      .previews
      .previewLayout(.sizeThatFits)
  }
  static var snapshots: PreviewSnapshots<Bool> {
    PreviewSnapshots(
      configurations: [
        .init(name: "normal", state: false),
        .init(name: "loading", state: true),
      ],
      configure: { state in
        CaaaptionButton(loading: state, action: {}) {
          Text("Continue to Sign-In")
            .frame(width: 300)
        }
        .padding()
      }
    )
  }
}
