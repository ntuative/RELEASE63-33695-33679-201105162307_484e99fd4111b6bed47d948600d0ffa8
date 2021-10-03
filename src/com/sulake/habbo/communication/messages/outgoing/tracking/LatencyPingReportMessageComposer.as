package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2727:int;
      
      private var var_2725:int;
      
      private var var_2726:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2727 = param1;
         this.var_2725 = param2;
         this.var_2726 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2727,this.var_2725,this.var_2726];
      }
      
      public function dispose() : void
      {
      }
   }
}
