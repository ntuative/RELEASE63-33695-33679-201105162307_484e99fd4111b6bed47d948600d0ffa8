package com.sulake.habbo.communication.messages.incoming.sound
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.sound.UserSongDisksInventoryMessageParser;
   
   public class UserSongDisksInventoryMessageEvent extends MessageEvent implements IMessageEvent
   {
       
      
      public function UserSongDisksInventoryMessageEvent(param1:Function)
      {
         super(param1,UserSongDisksInventoryMessageParser);
      }
      
      public function getParser() : UserSongDisksInventoryMessageParser
      {
         return this.var_10 as UserSongDisksInventoryMessageParser;
      }
   }
}
