import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
    override func awakeFromNib() {
      let flutterViewController = FlutterViewController.init()
      self.contentViewController = flutterViewController

      let windowWidth: CGFloat = 375 // 원하는 너비를 설정하세요.
      let windowHeight: CGFloat = 812 // 원하는 높이를 설정하세요.

      let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 800, height: 600)
      let screenWidth = screenSize.width
      let screenHeight = screenSize.height

      let horizontalPosition = (screenWidth - windowWidth) / 2
      let verticalPosition = (screenHeight - windowHeight) / 2

      let windowFrame = CGRect(x: horizontalPosition, y: verticalPosition, width: windowWidth, height: windowHeight)
      self.setFrame(windowFrame, display: true)

      RegisterGeneratedPlugins(registry: flutterViewController)

      super.awakeFromNib()
    }
}
