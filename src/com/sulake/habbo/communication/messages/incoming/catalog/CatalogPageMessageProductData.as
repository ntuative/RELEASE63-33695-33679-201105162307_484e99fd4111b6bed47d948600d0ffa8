package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_221:String = "e";
       
      
      private var var_1558:String;
      
      private var var_2723:int;
      
      private var var_1276:String;
      
      private var var_1559:int;
      
      private var var_1987:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1558 = param1.readString();
         this.var_2723 = param1.readInteger();
         this.var_1276 = param1.readString();
         this.var_1559 = param1.readInteger();
         this.var_1987 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1558;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2723;
      }
      
      public function get extraParam() : String
      {
         return this.var_1276;
      }
      
      public function get productCount() : int
      {
         return this.var_1559;
      }
      
      public function get expiration() : int
      {
         return this.var_1987;
      }
   }
}
