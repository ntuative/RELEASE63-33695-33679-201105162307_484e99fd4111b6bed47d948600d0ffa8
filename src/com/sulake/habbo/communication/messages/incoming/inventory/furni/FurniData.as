package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2793:int;
      
      private var var_1474:String;
      
      private var _objId:int;
      
      private var var_1988:int;
      
      private var _category:int;
      
      private var var_2158:String;
      
      private var var_2792:Boolean;
      
      private var var_2791:Boolean;
      
      private var var_2794:Boolean;
      
      private var var_2762:Boolean;
      
      private var var_2426:int;
      
      private var var_1379:int;
      
      private var var_1803:String = "";
      
      private var var_1738:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2793 = param1;
         this.var_1474 = param2;
         this._objId = param3;
         this.var_1988 = param4;
         this._category = param5;
         this.var_2158 = param6;
         this.var_2792 = param7;
         this.var_2791 = param8;
         this.var_2794 = param9;
         this.var_2762 = param10;
         this.var_2426 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1803 = param1;
         this.var_1379 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2793;
      }
      
      public function get itemType() : String
      {
         return this.var_1474;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1988;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2158;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2792;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2791;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2794;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2762;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2426;
      }
      
      public function get slotId() : String
      {
         return this.var_1803;
      }
      
      public function get songId() : int
      {
         return this.var_1738;
      }
      
      public function get extra() : int
      {
         return this.var_1379;
      }
   }
}
