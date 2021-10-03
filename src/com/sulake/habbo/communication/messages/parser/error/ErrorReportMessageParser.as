package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1688:int;
      
      private var var_1709:int;
      
      private var var_1710:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1709 = param1.readInteger();
         this.var_1688 = param1.readInteger();
         this.var_1710 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1688 = 0;
         this.var_1709 = 0;
         this.var_1710 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1688;
      }
      
      public function get messageId() : int
      {
         return this.var_1709;
      }
      
      public function get timestamp() : String
      {
         return this.var_1710;
      }
   }
}
