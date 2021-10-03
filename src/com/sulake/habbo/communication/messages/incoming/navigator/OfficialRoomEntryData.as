package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1165:int = 1;
      
      public static const const_686:int = 2;
      
      public static const const_762:int = 3;
      
      public static const const_1626:int = 4;
       
      
      private var _index:int;
      
      private var var_2764:String;
      
      private var var_2766:String;
      
      private var var_2767:Boolean;
      
      private var var_2765:String;
      
      private var var_1029:String;
      
      private var var_2763:int;
      
      private var var_2438:int;
      
      private var _type:int;
      
      private var var_2197:String;
      
      private var var_1037:GuestRoomData;
      
      private var var_1038:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2764 = param1.readString();
         this.var_2766 = param1.readString();
         this.var_2767 = param1.readInteger() == 1;
         this.var_2765 = param1.readString();
         this.var_1029 = param1.readString();
         this.var_2763 = param1.readInteger();
         this.var_2438 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1165)
         {
            this.var_2197 = param1.readString();
         }
         else if(this._type == const_762)
         {
            this.var_1038 = new PublicRoomData(param1);
         }
         else if(this._type == const_686)
         {
            this.var_1037 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1037 != null)
         {
            this.var_1037.dispose();
            this.var_1037 = null;
         }
         if(this.var_1038 != null)
         {
            this.var_1038.dispose();
            this.var_1038 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2764;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2766;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2767;
      }
      
      public function get picText() : String
      {
         return this.var_2765;
      }
      
      public function get picRef() : String
      {
         return this.var_1029;
      }
      
      public function get folderId() : int
      {
         return this.var_2763;
      }
      
      public function get tag() : String
      {
         return this.var_2197;
      }
      
      public function get userCount() : int
      {
         return this.var_2438;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1037;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1038;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1165)
         {
            return 0;
         }
         if(this.type == const_686)
         {
            return this.var_1037.maxUserCount;
         }
         if(this.type == const_762)
         {
            return this.var_1038.maxUsers;
         }
         return 0;
      }
   }
}
