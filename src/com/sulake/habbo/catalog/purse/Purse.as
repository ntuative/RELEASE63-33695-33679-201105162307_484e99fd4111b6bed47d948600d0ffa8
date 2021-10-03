package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1724:int = 0;
      
      private var var_1539:Dictionary;
      
      private var var_1942:int = 0;
      
      private var var_1943:int = 0;
      
      private var var_2452:Boolean = false;
      
      private var var_2446:int = 0;
      
      private var var_2450:int = 0;
      
      public function Purse()
      {
         this.var_1539 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1724;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1724 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1942;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1942 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1943;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1943 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1942 > 0 || this.var_1943 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2452;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2452 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2446;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2446 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2450;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2450 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1539;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1539 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1539[param1];
      }
   }
}
