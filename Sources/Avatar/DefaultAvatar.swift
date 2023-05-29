import PreviewSnapshots
import SwiftUI

public struct DefaultAvatar: View {
  public init() {}

  public var body: some View {
    Image("empty-background", bundle: .module)
      .overlay {
        Image(systemName: "person")
          .resizable()
          .foregroundColor(Color.white)
          .scaleEffect(0.5)
          .aspectRatio(contentMode: .fill)
          .clipShape(Circle())
      }
  }
}

struct DefaultAvatarPreviews: PreviewProvider {
  static var previews: some View {
    snapshots
      .previews
      .previewLayout(.sizeThatFits)
  }

  static var snapshots: PreviewSnapshots<Void> {
    PreviewSnapshots(
      configurations: [
        .init(name: "DefaultAvatar", state: ()),
      ],
      configure: { _ in
        DefaultAvatar()
      }
    )
  }
}
