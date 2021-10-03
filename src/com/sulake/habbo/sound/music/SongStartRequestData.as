package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1738:int;
      
      private var var_1877:Number;
      
      private var var_2610:Number;
      
      private var var_2608:int;
      
      private var var_2607:Number;
      
      private var var_2609:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1738 = param1;
         this.var_1877 = param2;
         this.var_2610 = param3;
         this.var_2607 = param4;
         this.var_2609 = param5;
         this.var_2608 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1738;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1877 < 0)
         {
            return 0;
         }
         return this.var_1877 + (getTimer() - this.var_2608) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2610;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2607;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2609;
      }
   }
}
