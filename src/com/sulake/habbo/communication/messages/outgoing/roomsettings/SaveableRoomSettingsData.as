package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1730:String;
      
      private var var_2330:int;
      
      private var _password:String;
      
      private var var_1570:int;
      
      private var var_2335:int;
      
      private var var_873:Array;
      
      private var var_2332:Array;
      
      private var var_2329:Boolean;
      
      private var var_2336:Boolean;
      
      private var var_2334:Boolean;
      
      private var var_2331:Boolean;
      
      private var var_2333:int;
      
      private var var_2328:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2329;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2329 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2336;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2336 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2334;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2334 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2331;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2331 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2333;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2333 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2328;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2328 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1730;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1730 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2330;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2330 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1570;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1570 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2335;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2335 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_873;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_873 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2332;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2332 = param1;
      }
   }
}
