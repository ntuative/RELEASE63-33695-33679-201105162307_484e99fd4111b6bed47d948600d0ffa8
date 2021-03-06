package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2261:Boolean;
      
      private var var_2260:int;
      
      private var var_1685:Array;
      
      private var var_726:Array;
      
      private var var_725:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2261;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2260;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1685;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_726;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_725;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1685 = [];
         this.var_726 = [];
         this.var_725 = [];
         this.var_2261 = param1.readBoolean();
         this.var_2260 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1685.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_726.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_725.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
