package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_942:int;
      
      private var var_850:Boolean;
      
      private var var_1837:Boolean;
      
      private var var_626:String;
      
      private var var_1570:int;
      
      private var var_1834:String;
      
      private var var_1835:String;
      
      private var var_1836:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1836 = param3;
         this.var_1834 = param4;
         this.var_942 = param5;
         this.var_850 = param6;
         this.var_1837 = param7;
         this.var_626 = param8;
         this.var_1570 = param9;
         this.var_1835 = param10;
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
      
      public function get allowFollow() : Boolean
      {
         return this.var_1837;
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
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_942 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_850 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1837 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_626 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1570 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1834 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1835 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1836 = param1;
      }
   }
}
