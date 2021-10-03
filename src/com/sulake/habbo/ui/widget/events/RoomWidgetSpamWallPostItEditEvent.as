package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSpamWallPostItEditEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_486:String = "RWSWPUE_OPEN_EDITOR";
       
      
      private var var_218:int;
      
      private var var_413:String;
      
      private var var_1358:String;
      
      public function RoomWidgetSpamWallPostItEditEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_218 = param2;
         this.var_413 = param3;
         this.var_1358 = param4;
      }
      
      public function get location() : String
      {
         return this.var_413;
      }
      
      public function get objectId() : int
      {
         return this.var_218;
      }
      
      public function get objectType() : String
      {
         return this.var_1358;
      }
   }
}
