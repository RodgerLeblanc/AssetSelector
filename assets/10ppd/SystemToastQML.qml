import bb.cascades 1.2
import bb.system 1.2

Container {
    attachedObjects: [
        SystemToast {
            id: systemToast
            body: "You have a Z10 or P'9982 running 10.3 OS or higher"
            button.label: "Ok"
        }
    ]
    
    onCreationCompleted: {
        systemToast.show()
    }
}
