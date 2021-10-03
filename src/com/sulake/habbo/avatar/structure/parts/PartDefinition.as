package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2775:String;
      
      private var var_1992:String;
      
      private var var_2774:String;
      
      private var var_1990:Boolean;
      
      private var var_1991:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2775 = String(param1["set-type"]);
         this.var_1992 = String(param1["flipped-set-type"]);
         this.var_2774 = String(param1["remove-set-type"]);
         this.var_1990 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1991 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1991;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1991 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2775;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1992;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2774;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1990;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1990 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1992 = param1;
      }
   }
}
