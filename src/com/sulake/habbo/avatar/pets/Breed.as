package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2606:String = "";
      
      private var var_942:String;
      
      private var var_1467:Boolean;
      
      private var var_2762:Boolean = true;
      
      private var var_2760:int;
      
      private var var_2761:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2760 = parseInt(param1.@pattern);
         this.var_942 = String(param1.@gender);
         this.var_1467 = Boolean(parseInt(param1.@colorable));
         this.var_2606 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2762 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_942;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1467;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2762;
      }
      
      public function get patternId() : int
      {
         return this.var_2760;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2761;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2761 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2606;
      }
   }
}
