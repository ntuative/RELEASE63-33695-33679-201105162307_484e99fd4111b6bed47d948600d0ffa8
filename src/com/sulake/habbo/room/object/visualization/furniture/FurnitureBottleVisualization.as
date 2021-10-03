package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_997:int = 20;
      
      private static const const_637:int = 9;
      
      private static const const_1351:int = -1;
       
      
      private var var_292:Array;
      
      private var var_711:Boolean = false;
      
      public function FurnitureBottleVisualization()
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
               this.var_292.push(const_1351);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_711)
            {
               this.var_711 = false;
               this.var_292 = new Array();
               this.var_292.push(const_997);
               this.var_292.push(const_637 + param1);
               this.var_292.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
