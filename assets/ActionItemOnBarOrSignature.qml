import bb.cascades 1.2

ActionItem {
    title: qsTr("Review") + Retranslate.onLanguageChanged
    ActionBar.placement: ActionBarPlacement.OnBar
    imageSource: "asset:///images/ic_review.png"
    onTriggered: {
        invoke.query.uri = "appworld://content/59945495"
        invoke.query.updateQuery()
        invoke.trigger("bb.action.OPEN")
    }
}
