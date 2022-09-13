import Orion
import UIKit
import VerticalBatteryDrainC

class BatteryFillHook: ClassHook<_UIBatteryView> {
    func setFillLayer(_ layer: CALayer) {
        orig.setFillLayer(layer)
        let adjustedLevel = CGFloat(UIDevice.current.batteryLevel) * (22/3)
        target.fillLayer.setFrame(CGRect(x: 2, y: adjustedLevel + 2, width: 18, height: adjustedLevel))
        target.fillLayer.cornerRadius = 1
    }
    func _updateFillLayer() {}
    func __updateFillLayer() {}
}