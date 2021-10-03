package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1862:int;
      
      private var _name:String;
      
      private var var_1190:int;
      
      private var var_2893:int;
      
      private var var_2303:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_626:String;
      
      private var var_2896:int;
      
      private var var_2894:int;
      
      private var var_2895:int;
      
      private var var_2744:int;
      
      private var var_2302:int;
      
      private var _ownerName:String;
      
      private var var_539:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1862;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1190;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2893;
      }
      
      public function get experience() : int
      {
         return this.var_2303;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_626;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2896;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2894;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2895;
      }
      
      public function get respect() : int
      {
         return this.var_2744;
      }
      
      public function get ownerId() : int
      {
         return this.var_2302;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_539;
      }
      
      public function flush() : Boolean
      {
         this.var_1862 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1862 = param1.readInteger();
         this._name = param1.readString();
         this.var_1190 = param1.readInteger();
         this.var_2893 = param1.readInteger();
         this.var_2303 = param1.readInteger();
         this.var_2896 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2894 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2895 = param1.readInteger();
         this.var_626 = param1.readString();
         this.var_2744 = param1.readInteger();
         this.var_2302 = param1.readInteger();
         this.var_539 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
