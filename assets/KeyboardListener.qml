import bb.cascades 1.0

Container {
    property bool haveFocus: false
    property int horizontalMinimalSwipeInDU: 36
    property int verticalMinimalSwipeInDU: 10
    signal swipeUp(int distanceInDU)
    signal swipeDown(int distanceInDU)
    signal swipeRight(int distanceInDU)
    signal swipeLeft(int distanceInDU)
    signal swipeTooShort(int distanceInDU)

    // Empty for users with API lower than 10.3
}
