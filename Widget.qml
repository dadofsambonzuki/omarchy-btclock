import QtQuick
import qs.Commons

// What Omarchy Mobile's home screen loads: its status bar hosts no bar widgets,
// so a card on a home page is where BTClock lives on a phone. The bar widget is
// reused whole (with no qs.Ui imported, BarWidget here is this folder's file),
// and sizes its panels to the card.
Item {
  id: widget

  // The home screen's contract (WIDGETS.md).
  property var host: null
  property var settings: ({})
  property bool editing: false
  property int cellsWide: 1
  property int cellsHigh: 1
  property bool shown: true

  BarWidget {
    anchors.fill: parent
    anchors.margins: Style.spacing.xl
    settings: widget.settings
    home: widget.host
    editing: widget.editing
    shown: widget.shown
  }
}
