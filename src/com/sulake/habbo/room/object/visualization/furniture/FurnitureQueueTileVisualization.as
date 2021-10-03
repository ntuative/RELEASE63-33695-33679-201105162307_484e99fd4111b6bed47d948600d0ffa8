package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1351:int = 3;
      
      private static const const_1536:int = 2;
      
      private static const const_1535:int = 1;
      
      private static const const_1537:int = 15;
       
      
      private var var_292:Array;
      
      private var var_1269:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_292 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1536)
         {
            this.var_292 = new Array();
            this.var_292.push(const_1535);
            this.var_1269 = const_1537;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1269 > 0)
         {
            --this.var_1269;
         }
         if(this.var_1269 == 0)
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
