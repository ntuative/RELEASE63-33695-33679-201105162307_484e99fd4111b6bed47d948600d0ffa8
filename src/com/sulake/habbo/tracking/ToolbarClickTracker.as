package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1361:IHabboTracking;
      
      private var var_2039:Boolean = false;
      
      private var var_2319:int = 0;
      
      private var var_1705:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1361 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1361 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2039 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2319 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2039)
         {
            return;
         }
         ++this.var_1705;
         if(this.var_1705 <= this.var_2319)
         {
            this.var_1361.track("toolbar",param1);
         }
      }
   }
}
