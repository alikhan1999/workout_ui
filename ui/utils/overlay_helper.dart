import 'package:azz_medical_web/ui/widgets/input_done_view.dart';
import 'package:flutter/widgets.dart';

class OverlayEntryHelper {
  OverlayEntry? overlayEntry;
  showOverlay(BuildContext context, {FocusNode? n, FocusNode? p}) {
    if (overlayEntry != null) return;
    OverlayState? overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 0.0,
          left: 0.0,
          child: InputDoneView(
            nFocusNode: n,
            pFocusNode: p,
          ));
    });

    overlayState.insert(overlayEntry!);
  }

  removeOverlay() {
    if (overlayEntry != null) {
      overlayEntry?.remove();
      overlayEntry = null;
    }
  }
}
