import bb.cascades 1.0

Container {
    horizontalAlignment: HorizontalAlignment.Center
    DropDown {
        id: dropDown
        title: qsTr("Theme")
        Option {                        
            id: dark
            text: qsTr("Dark")
        }
        Option {
            id: bright
            text: qsTr("Bright")
        }
        onSelectedOptionChanged: {
            _settings.setValue("theme", selectedOption.text.toLowerCase())
            label.visible = true
        }
    }
    Label {
        id: label
        text: "You need to restart the app for changes to take effect"
        horizontalAlignment: HorizontalAlignment.Center
    }
    onCreationCompleted: {
        _settings.value("theme", "dark") == "dark" ? dropDown.setSelectedOption(dark) : dropDown.setSelectedOption(bright)
        label.visible = false
    }
}
