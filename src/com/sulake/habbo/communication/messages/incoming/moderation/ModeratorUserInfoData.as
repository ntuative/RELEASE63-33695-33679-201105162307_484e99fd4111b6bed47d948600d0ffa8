package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2304:int;
      
      private var var_2308:int;
      
      private var var_850:Boolean;
      
      private var var_2307:int;
      
      private var var_2305:int;
      
      private var var_2306:int;
      
      private var var_2309:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2304 = param1.readInteger();
         this.var_2308 = param1.readInteger();
         this.var_850 = param1.readBoolean();
         this.var_2307 = param1.readInteger();
         this.var_2305 = param1.readInteger();
         this.var_2306 = param1.readInteger();
         this.var_2309 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2304;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2308;
      }
      
      public function get online() : Boolean
      {
         return this.var_850;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2307;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2305;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2306;
      }
      
      public function get banCount() : int
      {
         return this.var_2309;
      }
   }
}
