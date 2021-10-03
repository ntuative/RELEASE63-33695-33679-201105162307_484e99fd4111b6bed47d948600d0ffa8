package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_626:String;
      
      private var var_2253:String;
      
      private var var_942:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_626 = param1;
         this.var_942 = param2;
         this.var_2253 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_626;
      }
      
      public function get race() : String
      {
         return this.var_2253;
      }
      
      public function get gender() : String
      {
         return this.var_942;
      }
   }
}
