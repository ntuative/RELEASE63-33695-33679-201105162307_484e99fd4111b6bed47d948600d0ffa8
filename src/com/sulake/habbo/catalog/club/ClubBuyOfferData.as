package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.ActivityPointTypeEnum;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1701:String;
      
      private var var_1728:int;
      
      private var var_2375:Boolean;
      
      private var var_2373:Boolean;
      
      private var var_2374:int;
      
      private var var_2380:int;
      
      private var var_395:ICatalogPage;
      
      private var var_2379:int;
      
      private var var_2376:int;
      
      private var var_2377:int;
      
      private var var_1392:String;
      
      private var var_2378:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1701 = param2;
         this.var_1728 = param3;
         this.var_2375 = param4;
         this.var_2373 = param5;
         this.var_2374 = param6;
         this.var_2380 = param7;
         this.var_2379 = param8;
         this.var_2376 = param9;
         this.var_2377 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1392;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1392 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1701;
      }
      
      public function get price() : int
      {
         return this.var_1728;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2375;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2373;
      }
      
      public function get periods() : int
      {
         return this.var_2374;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2380;
      }
      
      public function get year() : int
      {
         return this.var_2379;
      }
      
      public function get month() : int
      {
         return this.var_2376;
      }
      
      public function get day() : int
      {
         return this.var_2377;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return ActivityPointTypeEnum.PIXEL;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1728;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_395;
      }
      
      public function get priceType() : String
      {
         return Offer.const_760;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1701;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_395 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2378;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2378 = param1;
      }
   }
}
