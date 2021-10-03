package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2493:Boolean = false;
      
      private var var_2494:int = 0;
      
      private var var_2495:int = 0;
      
      private var var_2489:int = 0;
      
      private var var_2492:int = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_414:String = "";
      
      private var _type:int = 0;
      
      private var var_2983:String = "";
      
      private var var_1379:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_177:Boolean = false;
      
      private var var_2427:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2493 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_177 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2493;
      }
      
      public function get wallX() : Number
      {
         return this.var_2494;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_177)
         {
            this.var_2494 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2495;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_177)
         {
            this.var_2495 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2489;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_177)
         {
            this.var_2489 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2492;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_177)
         {
            this.var_2492 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_177)
         {
            this.var_173 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_177)
         {
            this.var_172 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_414;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_177)
         {
            this.var_414 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_177)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_177)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_177)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2427;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_177)
         {
            this.var_2427 = param1;
         }
      }
   }
}
