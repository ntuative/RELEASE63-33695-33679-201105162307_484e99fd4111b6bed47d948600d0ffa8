package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_121:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1752:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_121);
         this.var_1752 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1752;
      }
   }
}
