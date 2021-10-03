package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1322:int;
      
      private var var_2442:String;
      
      private var var_2441:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1322 = param1.readInteger();
         this.var_2442 = param1.readString();
         this.var_2441 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1322;
      }
      
      public function get requesterName() : String
      {
         return this.var_2442;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2441;
      }
   }
}
