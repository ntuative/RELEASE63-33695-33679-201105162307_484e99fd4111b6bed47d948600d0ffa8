package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1190:int;
      
      private var var_313:String;
      
      private var var_1901:int;
      
      private var var_2623:int;
      
      private var var_1897:int;
      
      private var var_1900:int;
      
      private var var_1902:Boolean;
      
      private var _category:String;
      
      private var var_2629:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1190 = param1.readInteger();
         this.var_313 = param1.readString();
         this.var_1901 = param1.readInteger();
         this.var_2623 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_1902 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2629 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_313;
      }
      
      public function get level() : int
      {
         return this.var_1190;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1901;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2623;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1897;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1900;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1902;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2629;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1190 > 1 || this.var_1902;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1900 = this.var_1901;
      }
   }
}
