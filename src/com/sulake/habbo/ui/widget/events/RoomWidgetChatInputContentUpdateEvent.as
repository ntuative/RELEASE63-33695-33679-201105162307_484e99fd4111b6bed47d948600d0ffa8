package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetChatInputContentUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_761:String = "RWWCIDE_CHAT_INPUT_CONTENT";
      
      public static const const_1220:String = "whisper";
      
      public static const const_1787:String = "shout";
       
      
      private var var_2355:String = "";
      
      private var _userName:String = "";
      
      public function RoomWidgetChatInputContentUpdateEvent(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_761,param3,param4);
         this.var_2355 = param1;
         this._userName = param2;
      }
      
      public function get messageType() : String
      {
         return this.var_2355;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
   }
}
