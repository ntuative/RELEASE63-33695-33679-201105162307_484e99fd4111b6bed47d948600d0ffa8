package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2189:int;
      
      private var var_2259:int;
      
      private var var_2258:int;
      
      private var _dayOffsets:Array;
      
      private var var_1682:Array;
      
      private var var_1683:Array;
      
      private var var_2256:int;
      
      private var var_2257:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2189;
      }
      
      public function get offerCount() : int
      {
         return this.var_2259;
      }
      
      public function get historyLength() : int
      {
         return this.var_2258;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1682;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1683;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2256;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2257;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2189 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2259 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2258 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1682 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1683 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2256 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2257 = param1;
      }
   }
}
