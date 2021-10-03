package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_799:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1306:String = "inventory_effects";
      
      public static const const_1273:String = "inventory_badges";
      
      public static const const_1810:String = "inventory_clothes";
      
      public static const const_1658:String = "inventory_furniture";
       
      
      private var var_2223:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_799);
         this.var_2223 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2223;
      }
   }
}
