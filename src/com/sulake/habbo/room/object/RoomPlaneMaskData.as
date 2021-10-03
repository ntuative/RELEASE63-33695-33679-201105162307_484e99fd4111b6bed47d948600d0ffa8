package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2294:Number = 0.0;
      
      private var var_2293:Number = 0.0;
      
      private var var_2593:Number = 0.0;
      
      private var var_2594:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2294 = param1;
         this.var_2293 = param2;
         this.var_2593 = param3;
         this.var_2594 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2294;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2293;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2593;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2594;
      }
   }
}
