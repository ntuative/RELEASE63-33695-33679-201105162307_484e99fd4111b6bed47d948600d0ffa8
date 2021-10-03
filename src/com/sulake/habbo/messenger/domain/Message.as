package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_730:int = 1;
      
      public static const const_695:int = 2;
      
      public static const const_685:int = 3;
      
      public static const const_1142:int = 4;
      
      public static const const_898:int = 5;
      
      public static const const_1121:int = 6;
       
      
      private var _type:int;
      
      private var var_1114:int;
      
      private var var_2199:String;
      
      private var var_2403:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1114 = param2;
         this.var_2199 = param3;
         this.var_2403 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2199;
      }
      
      public function get time() : String
      {
         return this.var_2403;
      }
      
      public function get senderId() : int
      {
         return this.var_1114;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
