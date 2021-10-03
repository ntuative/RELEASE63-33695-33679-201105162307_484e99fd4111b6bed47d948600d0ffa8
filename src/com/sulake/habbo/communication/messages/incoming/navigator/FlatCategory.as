package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1920:int;
      
      private var var_2432:String;
      
      private var var_301:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1920 = param1.readInteger();
         this.var_2432 = param1.readString();
         this.var_301 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1920;
      }
      
      public function get nodeName() : String
      {
         return this.var_2432;
      }
      
      public function get visible() : Boolean
      {
         return this.var_301;
      }
   }
}
