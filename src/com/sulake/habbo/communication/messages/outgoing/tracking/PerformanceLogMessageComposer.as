package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2560:int = 0;
      
      private var var_1416:String = "";
      
      private var var_1734:String = "";
      
      private var var_2393:String = "";
      
      private var var_2572:String = "";
      
      private var var_1851:int = 0;
      
      private var var_2571:int = 0;
      
      private var var_2574:int = 0;
      
      private var var_1414:int = 0;
      
      private var var_2573:int = 0;
      
      private var var_1413:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2560 = param1;
         this.var_1416 = param2;
         this.var_1734 = param3;
         this.var_2393 = param4;
         this.var_2572 = param5;
         if(param6)
         {
            this.var_1851 = 1;
         }
         else
         {
            this.var_1851 = 0;
         }
         this.var_2571 = param7;
         this.var_2574 = param8;
         this.var_1414 = param9;
         this.var_2573 = param10;
         this.var_1413 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2560,this.var_1416,this.var_1734,this.var_2393,this.var_2572,this.var_1851,this.var_2571,this.var_2574,this.var_1414,this.var_2573,this.var_1413];
      }
   }
}
