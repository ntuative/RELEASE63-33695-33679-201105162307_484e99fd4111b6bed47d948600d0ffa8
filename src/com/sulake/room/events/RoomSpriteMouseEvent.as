package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2019:String = "";
      
      private var var_1655:String = "";
      
      private var var_2487:String = "";
      
      private var var_2484:Number = 0;
      
      private var var_2491:Number = 0;
      
      private var var_2489:Number = 0;
      
      private var var_2492:Number = 0;
      
      private var var_2485:Boolean = false;
      
      private var var_2486:Boolean = false;
      
      private var var_2490:Boolean = false;
      
      private var var_2488:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2019 = param2;
         this.var_1655 = param3;
         this.var_2487 = param4;
         this.var_2484 = param5;
         this.var_2491 = param6;
         this.var_2489 = param7;
         this.var_2492 = param8;
         this.var_2485 = param9;
         this.var_2486 = param10;
         this.var_2490 = param11;
         this.var_2488 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2019;
      }
      
      public function get canvasId() : String
      {
         return this.var_1655;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2487;
      }
      
      public function get screenX() : Number
      {
         return this.var_2484;
      }
      
      public function get screenY() : Number
      {
         return this.var_2491;
      }
      
      public function get localX() : Number
      {
         return this.var_2489;
      }
      
      public function get localY() : Number
      {
         return this.var_2492;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2485;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2486;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2490;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2488;
      }
   }
}
