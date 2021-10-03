package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_2337:Number = 0;
      
      private var var_2341:Number = 0;
      
      private var var_2342:Number = 0;
      
      private var var_2339:Number = 0;
      
      private var var_414:int = 0;
      
      private var var_2338:int = 0;
      
      private var var_333:Array;
      
      private var var_2340:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_333 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_173 = param3;
         this.var_172 = param4;
         this.var_2337 = param5;
         this.var_414 = param6;
         this.var_2338 = param7;
         this.var_2341 = param8;
         this.var_2342 = param9;
         this.var_2339 = param10;
         this.var_2340 = param11;
         this.var_333 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function get localZ() : Number
      {
         return this.var_2337;
      }
      
      public function get targetX() : Number
      {
         return this.var_2341;
      }
      
      public function get targetY() : Number
      {
         return this.var_2342;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2339;
      }
      
      public function get dir() : int
      {
         return this.var_414;
      }
      
      public function get dirHead() : int
      {
         return this.var_2338;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2340;
      }
      
      public function get actions() : Array
      {
         return this.var_333.slice();
      }
   }
}
