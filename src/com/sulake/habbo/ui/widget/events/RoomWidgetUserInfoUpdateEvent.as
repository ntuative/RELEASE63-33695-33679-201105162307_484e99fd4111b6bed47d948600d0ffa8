package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_129:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_163:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_807:int = 2;
      
      public static const const_896:int = 3;
      
      public static const const_1725:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1834:String = "";
      
      private var var_2201:int;
      
      private var var_2202:int = 0;
      
      private var var_2205:int = 0;
      
      private var var_626:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_264:Array;
      
      private var var_1412:int = 0;
      
      private var var_2271:String = "";
      
      private var var_2268:int = 0;
      
      private var var_2266:int = 0;
      
      private var var_2052:Boolean = false;
      
      private var var_1836:String = "";
      
      private var var_2265:Boolean = false;
      
      private var var_2267:Boolean = true;
      
      private var var_1096:int = 0;
      
      private var var_2273:Boolean = false;
      
      private var var_2264:Boolean = false;
      
      private var var_2274:Boolean = false;
      
      private var var_2269:Boolean = false;
      
      private var var_2272:Boolean = false;
      
      private var var_2263:Boolean = false;
      
      private var var_2270:int = 0;
      
      private var var_2054:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_264 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1834 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1834;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2201 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2201;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2202 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2202;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2205 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2205;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_626 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_626;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_264 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_264;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1412 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1412;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2271 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2271;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2265 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2265;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1096 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1096;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2273 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2273;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2264 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2264;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2274 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2274;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2269 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2269;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2272 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2272;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2263 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2263;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2270 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2270;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2267 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2267;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2054 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2054;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2268 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2268;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2266 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2266;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2052 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2052;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1836 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1836;
      }
   }
}
