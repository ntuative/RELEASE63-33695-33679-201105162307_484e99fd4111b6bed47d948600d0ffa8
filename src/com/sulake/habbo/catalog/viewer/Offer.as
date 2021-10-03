package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer, IDisposable
   {
      
      public static const const_1647:String = "pricing_model_unknown";
      
      public static const const_411:String = "pricing_model_single";
      
      public static const const_431:String = "pricing_model_multi";
      
      public static const const_554:String = "pricing_model_bundle";
      
      public static const const_1739:String = "price_type_none";
      
      public static const const_760:String = "price_type_credits";
      
      public static const const_1221:String = "price_type_activitypoints";
      
      public static const const_1147:String = "price_type_credits_and_activitypoints";
       
      
      private var var_737:String;
      
      private var var_1140:String;
      
      private var _offerId:int;
      
      private var var_1731:String;
      
      private var var_1141:int;
      
      private var var_1139:int;
      
      private var var_1732:int;
      
      private var var_395:ICatalogPage;
      
      private var var_603:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2392:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_1731 = param2;
         this.var_1141 = param3;
         this.var_1139 = param4;
         this.var_1732 = param5;
         this.var_395 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_395;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1731;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1141;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1139;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1732;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_603;
      }
      
      public function get pricingModel() : String
      {
         return this.var_737;
      }
      
      public function get priceType() : String
      {
         return this.var_1140;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2392;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2392 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this._offerId = 0;
         this.var_1731 = "";
         this.var_1141 = 0;
         this.var_1139 = 0;
         this.var_1732 = 0;
         this.var_395 = null;
         if(this.var_603 != null)
         {
            this.var_603.dispose();
            this.var_603 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_737)
         {
            case const_411:
               this.var_603 = new SingleProductContainer(this,param1);
               break;
            case const_431:
               this.var_603 = new MultiProductContainer(this,param1);
               break;
            case const_554:
               this.var_603 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_737);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_737 = const_411;
            }
            else
            {
               this.var_737 = const_431;
            }
         }
         else if(param1.length > 1)
         {
            this.var_737 = const_554;
         }
         else
         {
            this.var_737 = const_1647;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1141 > 0 && this.var_1139 > 0)
         {
            this.var_1140 = const_1147;
         }
         else if(this.var_1141 > 0)
         {
            this.var_1140 = const_760;
         }
         else if(this.var_1139 > 0)
         {
            this.var_1140 = const_1221;
         }
         else
         {
            this.var_1140 = const_1739;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_395.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_603.products)
         {
            _loc4_ = this.var_395.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
