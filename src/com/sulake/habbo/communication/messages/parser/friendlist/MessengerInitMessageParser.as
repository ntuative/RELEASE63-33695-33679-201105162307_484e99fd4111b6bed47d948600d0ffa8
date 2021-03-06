package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2882:int;
      
      private var var_2883:int;
      
      private var var_2881:int;
      
      private var var_2884:int;
      
      private var var_106:Array;
      
      private var var_238:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_106 = new Array();
         this.var_238 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2882 = param1.readInteger();
         this.var_2883 = param1.readInteger();
         this.var_2881 = param1.readInteger();
         this.var_2884 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_106.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_238.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2882;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2883;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2881;
      }
      
      public function get categories() : Array
      {
         return this.var_106;
      }
      
      public function get friends() : Array
      {
         return this.var_238;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2884;
      }
   }
}
