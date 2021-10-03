package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RequestSpamWallPostItMessageParser implements IMessageParser
   {
       
      
      private var var_1674:int;
      
      private var var_413:String;
      
      public function RequestSpamWallPostItMessageParser()
      {
         super();
      }
      
      public function get itemId() : int
      {
         return this.var_1674;
      }
      
      public function get location() : String
      {
         return this.var_413;
      }
      
      public function flush() : Boolean
      {
         this.var_1674 = -1;
         this.var_413 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1674 = param1.readInteger();
         this.var_413 = param1.readString();
         return true;
      }
   }
}
