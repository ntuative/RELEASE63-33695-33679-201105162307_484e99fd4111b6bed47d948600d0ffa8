package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_781:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_612:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_781);
         this.var_612 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_612;
      }
   }
}
