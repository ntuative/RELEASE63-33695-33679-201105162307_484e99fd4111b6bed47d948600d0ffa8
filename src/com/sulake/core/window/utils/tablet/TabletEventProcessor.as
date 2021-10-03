package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2985:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_84 = param1.desktop;
         var_63 = param1.var_1336 as WindowController;
         var_176 = param1.var_1337 as WindowController;
         var_163 = param1.renderer;
         var_876 = param1.var_1334;
         param2.begin();
         param2.end();
         param1.desktop = var_84;
         param1.var_1336 = var_63;
         param1.var_1337 = var_176;
         param1.renderer = var_163;
         param1.var_1334 = var_876;
      }
   }
}