package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1282:String = "M";
      
      public static const const_1692:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_414:int = 0;
      
      private var _name:String = "";
      
      private var var_1621:int = 0;
      
      private var var_1013:String = "";
      
      private var var_626:String = "";
      
      private var var_2204:String = "";
      
      private var var_2201:int;
      
      private var var_2202:int = 0;
      
      private var var_2203:String = "";
      
      private var var_2206:int = 0;
      
      private var var_2205:int = 0;
      
      private var var_2200:String = "";
      
      private var var_177:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_177 = true;
      }
      
      public function get id() : int
      {
         return this._id;
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
      
      public function get userType() : int
      {
         return this.var_1621;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_1621 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1013;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_177)
         {
            this.var_1013 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_626;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_177)
         {
            this.var_626 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2204;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_177)
         {
            this.var_2204 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2201;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_2201 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2202;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_2202 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2203;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_177)
         {
            this.var_2203 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2206;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_2206 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2205;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_177)
         {
            this.var_2205 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2200;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_177)
         {
            this.var_2200 = param1;
         }
      }
   }
}
