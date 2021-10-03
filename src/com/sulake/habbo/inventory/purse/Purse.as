package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1942:int = 0;
      
      private var var_1943:int = 0;
      
      private var var_2466:int = 0;
      
      private var var_2465:Boolean = false;
      
      private var var_2452:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1942 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1943 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2466 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2465 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2452 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1942;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1943;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2466;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2465;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2452;
      }
   }
}
