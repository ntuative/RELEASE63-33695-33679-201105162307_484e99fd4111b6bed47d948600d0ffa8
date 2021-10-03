package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_400:int;
      
      private var var_2438:int;
      
      private var var_2643:Boolean;
      
      private var var_2302:int;
      
      private var _ownerName:String;
      
      private var var_121:RoomData;
      
      private var var_751:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_400 = param1.readInteger();
         this.var_2438 = param1.readInteger();
         this.var_2643 = param1.readBoolean();
         this.var_2302 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_121 = new RoomData(param1);
         this.var_751 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_121 != null)
         {
            this.var_121.dispose();
            this.var_121 = null;
         }
         if(this.var_751 != null)
         {
            this.var_751.dispose();
            this.var_751 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_400;
      }
      
      public function get userCount() : int
      {
         return this.var_2438;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2643;
      }
      
      public function get ownerId() : int
      {
         return this.var_2302;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_121;
      }
      
      public function get event() : RoomData
      {
         return this.var_751;
      }
   }
}
