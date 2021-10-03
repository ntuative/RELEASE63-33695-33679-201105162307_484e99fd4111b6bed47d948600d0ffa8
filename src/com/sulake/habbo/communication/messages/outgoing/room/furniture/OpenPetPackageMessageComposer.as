package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class OpenPetPackageMessageComposer implements IMessageComposer
   {
       
      
      private var var_218:int;
      
      private var var_2615:String;
      
      public function OpenPetPackageMessageComposer(param1:int, param2:String)
      {
         super();
         this.var_218 = param1;
         this.var_2615 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_218,this.var_2615];
      }
      
      public function dispose() : void
      {
      }
   }
}
