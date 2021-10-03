package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1701:String;
      
      private var var_1728:int;
      
      private var var_2375:Boolean;
      
      private var var_2373:Boolean;
      
      private var var_2374:int;
      
      private var var_2380:int;
      
      private var var_2379:int;
      
      private var var_2376:int;
      
      private var var_2377:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1701 = param1.readString();
         this.var_1728 = param1.readInteger();
         this.var_2375 = param1.readBoolean();
         this.var_2373 = param1.readBoolean();
         this.var_2374 = param1.readInteger();
         this.var_2380 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         this.var_2377 = param1.readInteger();
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
   }
}
