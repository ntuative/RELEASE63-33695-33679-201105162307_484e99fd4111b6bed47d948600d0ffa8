package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_997:int = 10;
      
      private static const const_637:int = 20;
      
      private static const const_1350:int = 31;
      
      private static const const_1351:int = 32;
       
      
      private var var_292:Array;
      
      private var var_711:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_292 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_711)
            {
               this.var_711 = true;
               this.var_292 = new Array();
               this.var_292.push(const_1350);
               this.var_292.push(const_1351);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_997)
         {
            if(this.var_711)
            {
               this.var_711 = false;
               this.var_292 = new Array();
               this.var_292.push(const_997 + param1);
               this.var_292.push(const_637 + param1);
               this.var_292.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_292.length > 0)
            {
               super.setAnimation(this.var_292.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
