package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var _name:String = "";
      
      private var _type:String = "";
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_414:int = 0;
      
      private var var_552:int = 0;
      
      private var var_671:int = 0;
      
      private var var_177:Boolean = false;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function setReadOnly() : void
      {
         this.var_177 = true;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         if(!this.var_177)
         {
            this._type = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_177)
         {
            this._name = param1;
         }
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_177)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_414;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_414 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_552;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_552 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_671;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_671 = param1;
         }
      }
   }
}
