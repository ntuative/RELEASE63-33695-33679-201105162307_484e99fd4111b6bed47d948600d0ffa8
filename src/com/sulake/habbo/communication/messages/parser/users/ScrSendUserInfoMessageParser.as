package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2163:int = 1;
      
      public static const const_1798:int = 2;
       
      
      private var var_960:String;
      
      private var var_2445:int;
      
      private var var_2453:int;
      
      private var var_2451:int;
      
      private var var_2449:int;
      
      private var var_2448:Boolean;
      
      private var var_2452:Boolean;
      
      private var var_2446:int;
      
      private var var_2450:int;
      
      private var var_2447:Boolean;
      
      private var var_2455:int;
      
      private var var_2454:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_960 = param1.readString();
         this.var_2445 = param1.readInteger();
         this.var_2453 = param1.readInteger();
         this.var_2451 = param1.readInteger();
         this.var_2449 = param1.readInteger();
         this.var_2448 = param1.readBoolean();
         this.var_2452 = param1.readBoolean();
         this.var_2446 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         this.var_2447 = param1.readBoolean();
         this.var_2455 = param1.readInteger();
         this.var_2454 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_960;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2445;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2453;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2451;
      }
      
      public function get responseType() : int
      {
         return this.var_2449;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2448;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2452;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2446;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2450;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2447;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2455;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2454;
      }
   }
}
