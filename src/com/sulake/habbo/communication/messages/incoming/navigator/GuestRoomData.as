package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_400:int;
      
      private var var_751:Boolean;
      
      private var var_980:String;
      
      private var _ownerName:String;
      
      private var var_2330:int;
      
      private var var_2438:int;
      
      private var var_2554:int;
      
      private var var_1730:String;
      
      private var var_2552:int;
      
      private var var_2496:Boolean;
      
      private var var_842:int;
      
      private var var_1570:int;
      
      private var var_2550:String;
      
      private var var_873:Array;
      
      private var var_2553:RoomThumbnailData;
      
      private var var_2329:Boolean;
      
      private var var_2551:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_873 = new Array();
         super();
         this.var_400 = param1.readInteger();
         this.var_751 = param1.readBoolean();
         this.var_980 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2330 = param1.readInteger();
         this.var_2438 = param1.readInteger();
         this.var_2554 = param1.readInteger();
         this.var_1730 = param1.readString();
         this.var_2552 = param1.readInteger();
         this.var_2496 = param1.readBoolean();
         this.var_842 = param1.readInteger();
         this.var_1570 = param1.readInteger();
         this.var_2550 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_873.push(_loc4_);
            _loc3_++;
         }
         this.var_2553 = new RoomThumbnailData(param1);
         this.var_2329 = param1.readBoolean();
         this.var_2551 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_873 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_400;
      }
      
      public function get event() : Boolean
      {
         return this.var_751;
      }
      
      public function get roomName() : String
      {
         return this.var_980;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2330;
      }
      
      public function get userCount() : int
      {
         return this.var_2438;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2554;
      }
      
      public function get description() : String
      {
         return this.var_1730;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2552;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2496;
      }
      
      public function get score() : int
      {
         return this.var_842;
      }
      
      public function get categoryId() : int
      {
         return this.var_1570;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2550;
      }
      
      public function get tags() : Array
      {
         return this.var_873;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2553;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2329;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2551;
      }
   }
}
