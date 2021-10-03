package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_693;
         param1["bitmap"] = const_977;
         param1["border"] = const_877;
         param1["border_notify"] = const_1744;
         param1["bubble"] = const_759;
         param1["bubble_pointer_up"] = const_1157;
         param1["bubble_pointer_right"] = const_1201;
         param1["bubble_pointer_down"] = const_1228;
         param1["bubble_pointer_left"] = const_1303;
         param1["button"] = const_546;
         param1["button_thick"] = const_834;
         param1["button_icon"] = const_1883;
         param1["button_group_left"] = const_957;
         param1["button_group_center"] = const_832;
         param1["button_group_right"] = const_801;
         param1["canvas"] = const_758;
         param1["checkbox"] = const_978;
         param1["closebutton"] = const_1195;
         param1["container"] = const_432;
         param1["container_button"] = const_756;
         param1["display_object_wrapper"] = const_732;
         param1["dropmenu"] = const_593;
         param1["dropmenu_item"] = const_556;
         param1["frame"] = const_440;
         param1["frame_notify"] = const_1754;
         param1["header"] = const_908;
         param1["html"] = const_1238;
         param1["icon"] = const_1219;
         param1["itemgrid"] = const_1216;
         param1["itemgrid_horizontal"] = const_484;
         param1["itemgrid_vertical"] = const_822;
         param1["itemlist"] = const_1297;
         param1["itemlist_horizontal"] = const_426;
         param1["itemlist_vertical"] = const_386;
         param1["label"] = const_786;
         param1["maximizebox"] = const_1676;
         param1["menu"] = const_1800;
         param1["menu_item"] = const_1823;
         param1["submenu"] = const_1275;
         param1["minimizebox"] = const_1724;
         param1["notify"] = const_1730;
         param1["null"] = const_802;
         param1["password"] = const_928;
         param1["radiobutton"] = const_716;
         param1["region"] = const_550;
         param1["restorebox"] = const_1891;
         param1["scaler"] = const_488;
         param1["scaler_horizontal"] = const_1653;
         param1["scaler_vertical"] = const_1829;
         param1["scrollbar_horizontal"] = const_542;
         param1["scrollbar_vertical"] = const_743;
         param1["scrollbar_slider_button_up"] = const_1261;
         param1["scrollbar_slider_button_down"] = const_1163;
         param1["scrollbar_slider_button_left"] = const_1161;
         param1["scrollbar_slider_button_right"] = const_1226;
         param1["scrollbar_slider_bar_horizontal"] = const_1105;
         param1["scrollbar_slider_bar_vertical"] = const_1197;
         param1["scrollbar_slider_track_horizontal"] = const_1247;
         param1["scrollbar_slider_track_vertical"] = const_1252;
         param1["scrollable_itemlist"] = const_1766;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1150;
         param1["selector"] = const_677;
         param1["selector_list"] = const_933;
         param1["submenu"] = const_1275;
         param1["tab_button"] = const_903;
         param1["tab_container_button"] = const_1286;
         param1["tab_context"] = const_407;
         param1["tab_content"] = const_1179;
         param1["tab_selector"] = const_837;
         param1["text"] = const_692;
         param1["input"] = const_907;
         param1["toolbar"] = const_1889;
         param1["tooltip"] = const_427;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
