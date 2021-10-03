package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2064:Boolean;
      
      private var _roomId:int;
      
      private var var_980:String;
      
      private var var_2443:int;
      
      private var var_2444:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2064 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_980 = param1.readString();
         this.var_2443 = param1.readInteger();
         this.var_2444 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2064;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_980;
      }
      
      public function get enterHour() : int
      {
         return this.var_2443;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2444;
      }
   }
}
