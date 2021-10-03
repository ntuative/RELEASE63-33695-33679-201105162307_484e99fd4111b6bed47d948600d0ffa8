package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class WelcomeGiftStatusParser implements IMessageParser
   {
       
      
      private var var_1435:String;
      
      private var var_1155:Boolean;
      
      private var var_2601:Boolean;
      
      private var _furniId:int;
      
      private var var_2586:Boolean;
      
      public function WelcomeGiftStatusParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1435 = param1.readString();
         this.var_1155 = param1.readBoolean();
         this.var_2601 = param1.readBoolean();
         this._furniId = param1.readInteger();
         this.var_2586 = param1.readBoolean();
         return true;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2586;
      }
      
      public function get email() : String
      {
         return this.var_1435;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1155;
      }
      
      public function get allowChange() : Boolean
      {
         return this.var_2601;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
   }
}
