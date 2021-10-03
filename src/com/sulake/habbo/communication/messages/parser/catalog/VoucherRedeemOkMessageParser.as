package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_960:String = "";
      
      private var var_1182:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1182 = "";
         this.var_960 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1182 = param1.readString();
         this.var_960 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_960;
      }
      
      public function get productDescription() : String
      {
         return this.var_1182;
      }
   }
}
