package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_767:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2183:int;
      
      private var var_2182:int;
      
      private var _color:uint;
      
      private var var_1329:int;
      
      private var var_2181:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_767);
         this.var_2183 = param1;
         this.var_2182 = param2;
         this._color = param3;
         this.var_1329 = param4;
         this.var_2181 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2183;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2182;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1329;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2181;
      }
   }
}
