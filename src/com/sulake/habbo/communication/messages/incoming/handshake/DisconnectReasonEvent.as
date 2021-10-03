package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2149:int = 0;
      
      public static const const_1657:int = 1;
      
      public static const const_1741:int = 2;
      
      public static const const_2030:int = 3;
      
      public static const const_2004:int = 4;
      
      public static const const_2007:int = 5;
      
      public static const const_1706:int = 10;
      
      public static const const_2189:int = 11;
      
      public static const const_2132:int = 12;
      
      public static const const_2156:int = 13;
      
      public static const const_2127:int = 16;
      
      public static const const_2171:int = 17;
      
      public static const const_2116:int = 18;
      
      public static const const_2091:int = 19;
      
      public static const const_2087:int = 20;
      
      public static const const_2050:int = 22;
      
      public static const const_1993:int = 23;
      
      public static const const_2143:int = 24;
      
      public static const const_2103:int = 25;
      
      public static const const_1995:int = 26;
      
      public static const const_2174:int = 27;
      
      public static const const_2063:int = 28;
      
      public static const const_2159:int = 29;
      
      public static const const_2190:int = 100;
      
      public static const const_1992:int = 101;
      
      public static const const_2130:int = 102;
      
      public static const const_2094:int = 103;
      
      public static const const_2045:int = 104;
      
      public static const const_2175:int = 105;
      
      public static const const_2002:int = 106;
      
      public static const const_2080:int = 107;
      
      public static const const_2076:int = 108;
      
      public static const const_2058:int = 109;
      
      public static const const_2088:int = 110;
      
      public static const const_2016:int = 111;
      
      public static const const_2089:int = 112;
      
      public static const const_2019:int = 113;
      
      public static const const_2109:int = 114;
      
      public static const const_2154:int = 115;
      
      public static const const_2110:int = 116;
      
      public static const const_1991:int = 117;
      
      public static const const_2108:int = 118;
      
      public static const const_2012:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1657:
            case const_1706:
               return "banned";
            case const_1741:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
