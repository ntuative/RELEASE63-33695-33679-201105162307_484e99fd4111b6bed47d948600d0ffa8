package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1190:int;
      
      private var var_1634:int;
      
      private var var_2623:int;
      
      private var var_1897:int;
      
      private var var_1502:int;
      
      private var var_2343:String = "";
      
      private var var_2708:String = "";
      
      private var var_2709:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1190 = param1.readInteger();
         this.var_2343 = param1.readString();
         this.var_1634 = param1.readInteger();
         this.var_2623 = param1.readInteger();
         this.var_1897 = param1.readInteger();
         this.var_1502 = param1.readInteger();
         this.var_2709 = param1.readInteger();
         this.var_2708 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1190;
      }
      
      public function get points() : int
      {
         return this.var_1634;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2623;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1897;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1502;
      }
      
      public function get badgeID() : String
      {
         return this.var_2343;
      }
      
      public function get achievementID() : int
      {
         return this.var_2709;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2708;
      }
   }
}
