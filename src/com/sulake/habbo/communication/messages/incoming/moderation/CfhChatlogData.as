package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1696:int;
      
      private var var_2283:int;
      
      private var var_1398:int;
      
      private var var_2284:int;
      
      private var var_121:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1696 = param1.readInteger();
         this.var_2283 = param1.readInteger();
         this.var_1398 = param1.readInteger();
         this.var_2284 = param1.readInteger();
         this.var_121 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1696);
      }
      
      public function get callId() : int
      {
         return this.var_1696;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2283;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1398;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2284;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_121;
      }
   }
}
