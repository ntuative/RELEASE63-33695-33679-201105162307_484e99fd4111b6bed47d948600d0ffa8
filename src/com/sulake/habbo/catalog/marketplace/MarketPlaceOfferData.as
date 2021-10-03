package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_106:int = 1;
      
      public static const const_71:int = 2;
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2191:int;
      
      private var var_2158:String;
      
      private var var_1728:int;
      
      private var var_2189:int;
      
      private var var_2410:int;
      
      private var var_404:int;
      
      private var var_2190:int = -1;
      
      private var var_1743:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2191 = param3;
         this.var_2158 = param4;
         this.var_1728 = param5;
         this.var_404 = param6;
         this.var_2189 = param7;
         this.var_1743 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2191;
      }
      
      public function get stuffData() : String
      {
         return this.var_2158;
      }
      
      public function get price() : int
      {
         return this.var_1728;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2189;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2410 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2410;
      }
      
      public function get status() : int
      {
         return this.var_404;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2190;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1728 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1743;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1743 = param1;
      }
   }
}
