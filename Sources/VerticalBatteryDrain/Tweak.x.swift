import Orion
import UIKit
import VerticalBatteryDrainC

class BatteryFillHook: ClassHook<_UIBatteryView> {
    func setFillLayer(_ layer: CALayer) {
        orig.setFillLayer(layer)
        fillLogic()
        target.fillLayer.cornerRadius = 1
    }
    func _updateFillLayer() {
        fillLogic()
    }
    // orion:new
    func fillLogic() {
        let adjustedLevel = CGFloat(UIDevice.current.batteryLevel) * (22/3.0)
        target.fillLayer.setFrame(CGRect(x: 2, y: -adjustedLevel + 9, width: 18, height: adjustedLevel))
    }
}