import bb.cascades 1.2

Container {
    topPadding: _ui.du(3)
    horizontalAlignment: HorizontalAlignment.Center
    ToggleButton {
        id: toggleButton
        checked: _settings.value("toggleButtonChecked", false)
        onCheckedChanged: _settings.setValue("toggleButtonChecked", checked)
        horizontalAlignment: HorizontalAlignment.Center
    }
    Label {
        text: "This toggle can be controlled with a touch-enabled keyboard"
        horizontalAlignment: HorizontalAlignment.Center
    }    
    KeyboardListener {
        haveFocus: true
        horizontalMinimalSwipeInDU: 20
        onSwipeLeft: toggleButton.checked = false
        onSwipeRight: toggleButton.checked = true
    }
}
