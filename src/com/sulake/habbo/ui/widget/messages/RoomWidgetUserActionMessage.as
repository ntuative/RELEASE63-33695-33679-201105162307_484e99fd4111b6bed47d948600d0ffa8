package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_576:String = "RWUAM_WHISPER_USER";
      
      public static const const_568:String = "RWUAM_IGNORE_USER";
      
      public static const const_483:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_405:String = "RWUAM_KICK_USER";
      
      public static const const_539:String = "RWUAM_BAN_USER";
      
      public static const const_567:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_544:String = "RWUAM_RESPECT_USER";
      
      public static const const_570:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_629:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_466:String = "RWUAM_START_TRADING";
      
      public static const const_733:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_604:String = "RWUAM_KICK_BOT";
      
      public static const const_596:String = "RWUAM_REPORT";
      
      public static const const_524:String = "RWUAM_PICKUP_PET";
      
      public static const const_1795:String = "RWUAM_TRAIN_PET";
      
      public static const const_614:String = " RWUAM_RESPECT_PET";
      
      public static const const_403:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_914:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
