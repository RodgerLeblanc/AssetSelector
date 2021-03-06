import bb.cascades 1.3

Container {
    horizontalAlignment: HorizontalAlignment.Center
    DropDown {
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
            if (selectedOption.text == "Dark")
                Application.themeSupport.setVisualStyle(VisualStyle.Dark)
            else 
                Application.themeSupport.setVisualStyle(VisualStyle.Bright)
        }
        onCreationCompleted: Application.themeSupport.theme.colorTheme.style == VisualStyle.Dark ? setSelectedOption(dark) : setSelectedOption(bright)
    }
}
