package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_219;
         param1["bound_to_parent_rect"] = const_99;
         param1["child_window"] = const_1108;
         param1["embedded_controller"] = const_1207;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_842;
         param1["mouse_dragging_target"] = const_283;
         param1["mouse_dragging_trigger"] = const_377;
         param1["mouse_scaling_target"] = const_332;
         param1["mouse_scaling_trigger"] = const_598;
         param1["horizontal_mouse_scaling_trigger"] = const_239;
         param1["vertical_mouse_scaling_trigger"] = const_233;
         param1["observe_parent_input_events"] = const_1308;
         param1["optimize_region_to_layout_size"] = const_518;
         param1["parent_window"] = const_1232;
         param1["relative_horizontal_scale_center"] = const_214;
         param1["relative_horizontal_scale_fixed"] = const_154;
         param1["relative_horizontal_scale_move"] = const_387;
         param1["relative_horizontal_scale_strech"] = const_395;
         param1["relative_scale_center"] = const_1200;
         param1["relative_scale_fixed"] = const_833;
         param1["relative_scale_move"] = const_1309;
         param1["relative_scale_strech"] = const_1328;
         param1["relative_vertical_scale_center"] = const_220;
         param1["relative_vertical_scale_fixed"] = const_142;
         param1["relative_vertical_scale_move"] = const_252;
         param1["relative_vertical_scale_strech"] = const_342;
         param1["on_resize_align_left"] = const_720;
         param1["on_resize_align_right"] = const_495;
         param1["on_resize_align_center"] = const_482;
         param1["on_resize_align_top"] = const_737;
         param1["on_resize_align_bottom"] = const_595;
         param1["on_resize_align_middle"] = const_610;
         param1["on_accommodate_align_left"] = const_1305;
         param1["on_accommodate_align_right"] = const_469;
         param1["on_accommodate_align_center"] = const_897;
         param1["on_accommodate_align_top"] = const_1326;
         param1["on_accommodate_align_bottom"] = const_501;
         param1["on_accommodate_align_middle"] = const_961;
         param1["route_input_events_to_parent"] = const_573;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1204;
         param1["scalable_with_mouse"] = const_1256;
         param1["reflect_horizontal_resize_to_parent"] = const_632;
         param1["reflect_vertical_resize_to_parent"] = const_622;
         param1["reflect_resize_to_parent"] = const_321;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1154;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
