package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1803:int;
      
      private var var_2478:String;
      
      private var var_942:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1803 = param1.readInteger();
         this.var_2478 = param1.readString();
         this.var_942 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1803;
      }
      
      public function get figureString() : String
      {
         return this.var_2478;
      }
      
      public function get gender() : String
      {
         return this.var_942;
      }
   }
}
