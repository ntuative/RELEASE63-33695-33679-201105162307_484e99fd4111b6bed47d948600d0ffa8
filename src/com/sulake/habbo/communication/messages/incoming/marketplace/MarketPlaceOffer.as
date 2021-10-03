package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2191:int;
      
      private var var_2158:String;
      
      private var var_1728:int;
      
      private var var_404:int;
      
      private var var_2190:int = -1;
      
      private var var_2189:int;
      
      private var var_1743:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2191 = param3;
         this.var_2158 = param4;
         this.var_1728 = param5;
         this.var_404 = param6;
         this.var_2190 = param7;
         this.var_2189 = param8;
         this.var_1743 = param9;
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
      
      public function get status() : int
      {
         return this.var_404;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2190;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2189;
      }
      
      public function get offerCount() : int
      {
         return this.var_1743;
      }
   }
}
