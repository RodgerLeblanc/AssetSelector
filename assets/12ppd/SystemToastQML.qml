import bb.cascades 1.2
import bb.system 1.2

Container {
    attachedObjects: [
        SystemToast {
            id: systemToast
            body: "You have a Passport running 10.3 OS or higher and can control the toggle with your touch-enabled keyboard"
            button.label: "Ok"
        }
    ]
    
    onCreationCompleted: {
        systemToast.show()
    }
}
