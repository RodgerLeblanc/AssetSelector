import bb.cascades 1.2
import bb.system 1.2

Container {
    attachedObjects: [
        SystemToast {
            id: systemToast
            body: "You have 10.2.1 OS or less"
            button.label: "Ok"
        }
    ]
    
    onCreationCompleted: {
        systemToast.show()
    }
}
