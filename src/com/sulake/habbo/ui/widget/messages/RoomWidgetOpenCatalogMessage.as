package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_442:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1330:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1269:String = "RWOCM_PIXELS";
      
      public static const const_1254:String = "RWOCM_CREDITS";
       
      
      private var var_2322:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_442);
         this.var_2322 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2322;
      }
   }
}
