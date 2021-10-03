package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2183:int;
      
      private var var_2182:int;
      
      private var var_2359:String;
      
      private var var_2361:int;
      
      private var var_2360:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2183 = param1;
         this.var_2182 = param2;
         this.var_2359 = param3;
         this.var_2361 = param4;
         this.var_2360 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2183,this.var_2182,this.var_2359,this.var_2361,int(this.var_2360)];
      }
      
      public function dispose() : void
      {
      }
   }
}
