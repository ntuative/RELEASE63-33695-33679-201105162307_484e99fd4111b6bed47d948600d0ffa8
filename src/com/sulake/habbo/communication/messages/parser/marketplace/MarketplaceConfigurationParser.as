package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1447:Boolean;
      
      private var var_2324:int;
      
      private var var_1707:int;
      
      private var var_1708:int;
      
      private var var_2323:int;
      
      private var var_2325:int;
      
      private var var_2326:int;
      
      private var var_2315:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1447;
      }
      
      public function get commission() : int
      {
         return this.var_2324;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1707;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1708;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2325;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2323;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2326;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2315;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1447 = param1.readBoolean();
         this.var_2324 = param1.readInteger();
         this.var_1707 = param1.readInteger();
         this.var_1708 = param1.readInteger();
         this.var_2325 = param1.readInteger();
         this.var_2323 = param1.readInteger();
         this.var_2326 = param1.readInteger();
         this.var_2315 = param1.readInteger();
         return true;
      }
   }
}
