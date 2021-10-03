package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2948:uint;
      
      private var var_152:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_275:IWindowContext;
      
      private var var_1151:IMouseDraggingService;
      
      private var var_1147:IMouseScalingService;
      
      private var var_1148:IMouseListenerService;
      
      private var var_1149:IFocusManagerService;
      
      private var var_1150:IToolTipAgentService;
      
      private var var_1152:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2948 = 0;
         this.var_152 = param2;
         this.var_275 = param1;
         this.var_1151 = new WindowMouseDragger(param2);
         this.var_1147 = new WindowMouseScaler(param2);
         this.var_1148 = new WindowMouseListener(param2);
         this.var_1149 = new FocusManager(param2);
         this.var_1150 = new WindowToolTipAgent(param2);
         this.var_1152 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1151 != null)
         {
            this.var_1151.dispose();
            this.var_1151 = null;
         }
         if(this.var_1147 != null)
         {
            this.var_1147.dispose();
            this.var_1147 = null;
         }
         if(this.var_1148 != null)
         {
            this.var_1148.dispose();
            this.var_1148 = null;
         }
         if(this.var_1149 != null)
         {
            this.var_1149.dispose();
            this.var_1149 = null;
         }
         if(this.var_1150 != null)
         {
            this.var_1150.dispose();
            this.var_1150 = null;
         }
         if(this.var_1152 != null)
         {
            this.var_1152.dispose();
            this.var_1152 = null;
         }
         this.var_152 = null;
         this.var_275 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1151;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1147;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1148;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1149;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1150;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1152;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
