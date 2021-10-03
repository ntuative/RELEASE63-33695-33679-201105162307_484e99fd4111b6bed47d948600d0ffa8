package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_231:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2756:int = 0;
      
      private var var_2758:int = 0;
      
      private var var_2759:int = 0;
      
      private var var_2757:Boolean = false;
      
      private var var_2164:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_231,param6,param7);
         this.var_2756 = param1;
         this.var_2758 = param2;
         this.var_2759 = param3;
         this.var_2757 = param4;
         this.var_2164 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2756;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2758;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2759;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2757;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2164;
      }
   }
}
