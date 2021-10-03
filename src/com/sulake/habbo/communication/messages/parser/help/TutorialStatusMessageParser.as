package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1135:Boolean;
      
      private var var_1136:Boolean;
      
      private var var_1409:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1135;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1136;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1409;
      }
      
      public function flush() : Boolean
      {
         this.var_1135 = false;
         this.var_1136 = false;
         this.var_1409 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1135 = param1.readBoolean();
         this.var_1136 = param1.readBoolean();
         this.var_1409 = param1.readBoolean();
         return true;
      }
   }
}
