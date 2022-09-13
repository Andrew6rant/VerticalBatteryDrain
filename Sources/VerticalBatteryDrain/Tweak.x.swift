import Orion
import UIKit
import VerticalBatteryDrainC

class BatteryFillHook: ClassHook<_UIBatteryView> {
    func setFrame(_ frame: CGRect) {
        orig.setFrame(frame)
        target.fillLayer.setFrame(CGRect(x: 2, y: 5, width: 18, height: 4))
    }
}