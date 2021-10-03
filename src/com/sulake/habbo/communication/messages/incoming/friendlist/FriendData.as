package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_942:int;
      
      private var var_850:Boolean;
      
      private var var_1711:Boolean;
      
      private var var_626:String;
      
      private var var_1570:int;
      
      private var var_1834:String;
      
      private var var_1835:String;
      
      private var var_1836:String;
      
      private var var_2510:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_942 = param1.readInteger();
         this.var_850 = param1.readBoolean();
         this.var_1711 = param1.readBoolean();
         this.var_626 = param1.readString();
         this.var_1570 = param1.readInteger();
         this.var_1834 = param1.readString();
         this.var_1835 = param1.readString();
         this.var_1836 = param1.readString();
         this.var_2510 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_942;
      }
      
      public function get online() : Boolean
      {
         return this.var_850;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1711;
      }
      
      public function get figure() : String
      {
         return this.var_626;
      }
      
      public function get categoryId() : int
      {
         return this.var_1570;
      }
      
      public function get motto() : String
      {
         return this.var_1834;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1835;
      }
      
      public function get realName() : String
      {
         return this.var_1836;
      }
      
      public function get facebookId() : String
      {
         return this.var_2510;
      }
   }
}
