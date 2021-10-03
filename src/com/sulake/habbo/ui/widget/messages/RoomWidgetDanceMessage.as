package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_697:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1212:int = 0;
      
      public static const const_1794:Array = [2,3,4];
       
      
      private var var_81:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_697);
         this.var_81 = param1;
      }
      
      public function get style() : int
      {
         return this.var_81;
      }
   }
}
