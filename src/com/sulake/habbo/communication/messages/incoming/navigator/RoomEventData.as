package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1977:Boolean;
      
      private var var_2750:int;
      
      private var var_2751:String;
      
      private var var_400:int;
      
      private var var_2754:int;
      
      private var var_1859:String;
      
      private var var_2752:String;
      
      private var var_2753:String;
      
      private var var_873:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_873 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1977 = false;
            return;
         }
         this.var_1977 = true;
         this.var_2750 = int(_loc2_);
         this.var_2751 = param1.readString();
         this.var_400 = int(param1.readString());
         this.var_2754 = param1.readInteger();
         this.var_1859 = param1.readString();
         this.var_2752 = param1.readString();
         this.var_2753 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_873.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2750;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2751;
      }
      
      public function get flatId() : int
      {
         return this.var_400;
      }
      
      public function get eventType() : int
      {
         return this.var_2754;
      }
      
      public function get eventName() : String
      {
         return this.var_1859;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2752;
      }
      
      public function get creationTime() : String
      {
         return this.var_2753;
      }
      
      public function get tags() : Array
      {
         return this.var_873;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1977;
      }
   }
}
