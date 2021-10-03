package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1800:Boolean;
      
      private var var_941:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1800 = param1.readBoolean();
         this.var_941 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1800 + ", " + this.var_941.id + ", " + this.var_941.name + ", " + this.var_941.type + ", " + this.var_941.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1800;
      }
      
      public function get pet() : PetData
      {
         return this.var_941;
      }
   }
}
