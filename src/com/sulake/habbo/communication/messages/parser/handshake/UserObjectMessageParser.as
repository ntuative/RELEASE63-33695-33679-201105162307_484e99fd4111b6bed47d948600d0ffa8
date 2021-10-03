package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_626:String;
      
      private var var_1013:String;
      
      private var var_2242:String;
      
      private var var_1836:String;
      
      private var var_2240:int;
      
      private var var_2241:String;
      
      private var var_2239:int;
      
      private var var_2238:int;
      
      private var var_2174:int;
      
      private var var_1096:int;
      
      private var _petRespectLeft:int;
      
      private var var_2161:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_626 = param1.readString();
         this.var_1013 = param1.readString();
         this.var_2242 = param1.readString();
         this.var_1836 = param1.readString();
         this.var_2240 = param1.readInteger();
         this.var_2241 = param1.readString();
         this.var_2239 = param1.readInteger();
         this.var_2238 = param1.readInteger();
         this.var_2174 = param1.readInteger();
         this.var_1096 = param1.readInteger();
         this._petRespectLeft = param1.readInteger();
         this.var_2161 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_626;
      }
      
      public function get sex() : String
      {
         return this.var_1013;
      }
      
      public function get customData() : String
      {
         return this.var_2242;
      }
      
      public function get realName() : String
      {
         return this.var_1836;
      }
      
      public function get tickets() : int
      {
         return this.var_2240;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2241;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2239;
      }
      
      public function get directMail() : int
      {
         return this.var_2238;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2174;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1096;
      }
      
      public function get petRespectLeft() : int
      {
         return this._petRespectLeft;
      }
      
      public function get identityId() : int
      {
         return this.var_2161;
      }
   }
}
