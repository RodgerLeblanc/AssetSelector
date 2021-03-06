import bb.cascades 1.3

Container {
    property bool haveFocus: false
    property int horizontalMinimalSwipeInDU: 36
    property int verticalMinimalSwipeInDU: 10
    signal swipeUp(int distanceInDU)
    signal swipeDown(int distanceInDU)
    signal swipeRight(int distanceInDU)
    signal swipeLeft(int distanceInDU)
    signal swipeTooShort(int distanceInDU)
    ScrollView {                
        id: mainScrollView
        scrollRole: haveFocus ? ScrollRole.Main : ScrollRole.None
        scrollViewProperties.scrollMode: ScrollMode.Both
        property int startX
        property int stopX
        property int startY
        property int stopY
        eventHandlers: [ // This line will be handled as an error in Momentics if your project API is less than 10.3 because it's 10.3 specific. It will work anyway!
            TouchKeyboardHandler {
                id: touchKeyboard
                onTouch: {
                    if (event.touchType == TouchType.Down) {
                        mainScrollView.startX = event.screenX
                        mainScrollView.startY = event.screenY
                        return
                    }
                    if (event.touchType == TouchType.Up) {
                        mainScrollView.stopX = event.screenX
                        mainScrollView.stopY = event.screenY

                        var distanceX = (mainScrollView.stopX - mainScrollView.startX) / ui.du(1)
                        var distanceY = (mainScrollView.stopY - mainScrollView.startY) / ui.du(1)
                        
                        if (distanceX > horizontalMinimalSwipeInDU) {
                            console.log("Swiped right " + distanceX)
                            // Emit swipeRight signal
                            swipeRight(distanceX)
                        } else {
                            if (distanceX < (0 - horizontalMinimalSwipeInDU)) {
                                console.log("Swiped left " + distanceX)
                                // Emit swipeLeft signal
                                swipeLeft(distanceX)
                            } else {
                                console.log("Distance too short for horizontal swipe... " + distanceX)
                                swipeTooShort(distanceX)
                            }
                        }
                        
                        if (distanceY > verticalMinimalSwipeInDU) {
                            console.log("Swiped down " + distanceY)
                            // Emit swipeDown signal
                            swipeDown(distanceY)
                        } else {
                            if (distanceY < (0 - verticalMinimalSwipeInDU)) {
                                console.log("Swiped up " + distanceY)
                                // Emit swipeUp signal
                                swipeUp(distanceY)
                            } else {
                                console.log("Distance too short for vertical swipe... " + distanceY)
                                swipeTooShort(distanceX)
                            }
                        }

                        return
                    }
                }
            }
        ]
    }
}
