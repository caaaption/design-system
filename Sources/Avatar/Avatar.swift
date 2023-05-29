import PreviewSnapshots
import SwiftUI

public struct Avatar: View {
  let url: URL?
  let scale: CGFloat

  public init(
    url: URL?,
    scale: CGFloat = 1
  ) {
    self.url = url
    self.scale = scale
  }

  public var body: some View {
    AsyncImage(url: url, scale: scale) { phase in
      switch phase {
      case let .success(image):
        image
          .resizable()
          .aspectRatio(contentMode: .fill)
          .clipShape(Circle())
      default:
        DefaultAvatar()
      }
    }
  }
}

struct AvatarPreviews: PreviewProvider {
  static var previews: some View {
    snapshots
      .previews
      .previewLayout(.sizeThatFits)
  }

  static var snapshots: PreviewSnapshots<Void> {
    PreviewSnapshots(
      configurations: [
        .init(name: "Avatar", state: ()),
      ],
      configure: { _ in
        Avatar(url: nil)
      }
    )
  }
}
