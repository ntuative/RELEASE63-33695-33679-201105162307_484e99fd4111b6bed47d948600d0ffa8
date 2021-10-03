package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_997:int = 20;
      
      private static const const_637:int = 10;
      
      private static const const_1350:int = 31;
      
      private static const const_1351:int = 32;
      
      private static const const_636:int = 30;
       
      
      private var var_292:Array;
      
      private var var_711:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_292 = new Array();
         super();
         super.setAnimation(const_636);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_637)
         {
            if(this.var_711)
            {
               this.var_711 = false;
               this.var_292 = new Array();
               if(direction == 2)
               {
                  this.var_292.push(const_997 + 5 - param1);
                  this.var_292.push(const_637 + 5 - param1);
               }
               else
               {
                  this.var_292.push(const_997 + param1);
                  this.var_292.push(const_637 + param1);
               }
               this.var_292.push(const_636);
               return;
            }
            super.setAnimation(const_636);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
