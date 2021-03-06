package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_575:String = "RORMUM_ADD_MASK";
      
      public static const const_954:String = "RORMUM_ADD_MASK";
      
      public static const const_1625:String = "door";
      
      public static const const_569:String = "window";
      
      public static const const_241:String = "hole";
       
      
      private var _type:String = "";
      
      private var var_2777:String = "";
      
      private var var_2776:String = "";
      
      private var var_2778:Vector3d = null;
      
      private var var_2779:String = "window";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         this._type = param1;
         this.var_2777 = param2;
         this.var_2776 = param3;
         if(param4 != null)
         {
            this.var_2778 = new Vector3d(param4.x,param4.y,param4.z);
         }
         this.var_2779 = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get maskId() : String
      {
         return this.var_2777;
      }
      
      public function get maskType() : String
      {
         return this.var_2776;
      }
      
      public function get maskLocation() : IVector3d
      {
         return this.var_2778;
      }
      
      public function get maskCategory() : String
      {
         return this.var_2779;
      }
   }
}
