import 'package:flutter/material.dart';
import 'package:flutter_for_android_developers/async_ui/how_do_i_show_the_progress_for_a_long-running_task.dart';
import 'package:flutter_for_android_developers/async_ui/how_do_you_move_work_to_a_background_thread.dart';
import 'package:flutter_for_android_developers/databases_and_local_storage/HowDoIAccessSharedPreferences.dart';
import 'package:flutter_for_android_developers/form_input/how_do_i_show_validation_errors.dart';
import 'package:flutter_for_android_developers/gesture_detection_and_touch_event_handling/how_do_i_handle_other_gestures_on_widgets.dart';
import 'package:flutter_for_android_developers/listviews_and_adapters/how_do_i_know_which_list_item_is_clicked_on.dart';
import 'package:flutter_for_android_developers/listviews_and_adapters/how_do_i_update_listviews_dynamically.dart';
import 'package:flutter_for_android_developers/listviews_and_adapters/what_is_the_alternative_to_a_list_view_in_flutter.dart';

import 'package:flutter_for_android_developers/views/how_do_i_add_or_remove_a_component_from_my_layout.dart';
import 'package:flutter_for_android_developers/views/how_do_i_animate_a_widget.dart';
import 'package:flutter_for_android_developers/views/how_do_i_build_custom_widgets.dart';
import 'package:flutter_for_android_developers/views/how_do_i_lay_out_my_widgets_where_is_my_xml_layout_file.dart';
import 'package:flutter_for_android_developers/views/how_do_i_update_widgets.dart';
import 'package:flutter_for_android_developers/views/how_do_i_use_a_canvas_to_draw_paint.dart';

import 'package:flutter_for_android_developers/intents/what_is_the_equivalent_of_start_activity_for_result.dart';
import 'package:flutter_for_android_developers/intents/how_do_i_handle_incoming_intents_from_external_applications_in_flutter.dart';

import 'package:flutter_for_android_developers/async_ui/what_is_the_equivalent_of_run_on_ui_thread_in_flutter.dart';
import 'package:flutter_for_android_developers/working_with_text/how_do_i_set_custom_fonts_on_my_text_widgets.dart';

const kRouteV1 = '/v1';
const kRouteV2 = '/v2';
const kRouteV3 = '/v3';
const kRouteV4 = '/v4';
const kRouteV5 = '/v5';
const kRouteV6 = '/v6';
const kRouteI1 = '/i1';
const kRouteI2 = '/i2';
const kRouteA1 = '/a1';
const kRouteA2 = '/a2';
const kRouteA4 = '/a4';
const kRouteG1 = '/g1';
const kRouteL1 = '/l1';
const kRouteL2 = '/l2';
const kRouteL3 = '/l3';
const kRouteW1 = '/w1';
const kRouteF1 = '/f1';
const kRouteD1 = '/d1';

final kRoutes = <String, WidgetBuilder> {
  kRouteV1 : (BuildContext context) => HowDoIUpdateWidgets(),
  kRouteV2 : (BuildContext context) => HowDoILayOutMyWidgetsWhereIsMyXMLLayoutFile(),
  kRouteV3 : (BuildContext context) => HowDoIAddOrRemoveAComponentFromMyLayout(),
  kRouteV4 : (BuildContext context) => HowDoIAnimateAWidget(),
  kRouteV5 : (BuildContext context) => HowDoIUseACanvasToDrawPaint(),
  kRouteV6 : (BuildContext context) => HowDoIBuildCustomWidgets(),
  kRouteI1 : (BuildContext context) => HowDoIHandleIncomingIntentsFromExternalApplicationsInFlutter(),
  kRouteI2 : (BuildContext context) => WhatIsTheEquivalentOfStartActivityForResult(),
  kRouteA1 : (BuildContext context) => WhatIsTheEquivalentOfRunOnUiThreadInFlutter(),
  kRouteA2 : (BuildContext context) => HowDoYouMoveWorkToABackgroundThread(),
  kRouteA4 : (BuildContext context) => HowDoIShowTheProgressForALongRunningTask(),
  kRouteG1 : (BuildContext context) => HowDoIHandleOtherGesturesOnWidgets(),
  kRouteL1 : (BuildContext context) => WhatIsTheAlternativeToAListViewInFlutter(),
  kRouteL2 : (BuildContext context) => HowDoIKnowWhichListItemIsClickedOn(),
  kRouteL3 : (BuildContext context) => HowDoIUpdateListViewsDynamically(),
  kRouteW1 : (BuildContext context) => HowDoISetCustomFontsOnMyTextWidgets(),
  kRouteF1 : (BuildContext context) => HowDoIShowValidationErrors(),
  kRouteD1 : (BuildContext context) => HowDoIAccessSharedPreferences(),
};