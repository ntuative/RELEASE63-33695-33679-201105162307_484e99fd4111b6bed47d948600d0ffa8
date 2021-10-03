package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_911:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1412:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_911);
         this.var_1412 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1412;
      }
   }
}
