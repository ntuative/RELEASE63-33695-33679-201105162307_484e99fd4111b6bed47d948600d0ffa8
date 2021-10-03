package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1734:String = "WE_DESTROY";
      
      public static const const_302:String = "WE_DESTROYED";
      
      public static const const_1711:String = "WE_OPEN";
      
      public static const const_1792:String = "WE_OPENED";
      
      public static const const_1700:String = "WE_CLOSE";
      
      public static const const_1900:String = "WE_CLOSED";
      
      public static const const_1905:String = "WE_FOCUS";
      
      public static const const_308:String = "WE_FOCUSED";
      
      public static const const_1908:String = "WE_UNFOCUS";
      
      public static const const_1772:String = "WE_UNFOCUSED";
      
      public static const const_1774:String = "WE_ACTIVATE";
      
      public static const const_613:String = "WE_ACTIVATED";
      
      public static const const_1855:String = "WE_DEACTIVATE";
      
      public static const const_583:String = "WE_DEACTIVATED";
      
      public static const const_357:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_465:String = "WE_UNSELECT";
      
      public static const const_564:String = "WE_UNSELECTED";
      
      public static const const_1641:String = "WE_LOCK";
      
      public static const const_1704:String = "WE_LOCKED";
      
      public static const const_1670:String = "WE_UNLOCK";
      
      public static const const_1834:String = "WE_UNLOCKED";
      
      public static const const_687:String = "WE_ENABLE";
      
      public static const const_242:String = "WE_ENABLED";
      
      public static const const_754:String = "WE_DISABLE";
      
      public static const const_289:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_415:String = "WE_RELOCATED";
      
      public static const const_1271:String = "WE_RESIZE";
      
      public static const const_41:String = "WE_RESIZED";
      
      public static const const_1915:String = "WE_MINIMIZE";
      
      public static const const_1735:String = "WE_MINIMIZED";
      
      public static const const_1695:String = "WE_MAXIMIZE";
      
      public static const const_1799:String = "WE_MAXIMIZED";
      
      public static const const_1819:String = "WE_RESTORE";
      
      public static const const_1857:String = "WE_RESTORED";
      
      public static const const_326:String = "WE_CHILD_ADDED";
      
      public static const const_391:String = "WE_CHILD_REMOVED";
      
      public static const const_191:String = "WE_CHILD_RELOCATED";
      
      public static const const_119:String = "WE_CHILD_RESIZED";
      
      public static const const_349:String = "WE_CHILD_ACTIVATED";
      
      public static const const_558:String = "WE_PARENT_ADDED";
      
      public static const const_1811:String = "WE_PARENT_REMOVED";
      
      public static const const_1791:String = "WE_PARENT_RELOCATED";
      
      public static const const_866:String = "WE_PARENT_RESIZED";
      
      public static const const_1270:String = "WE_PARENT_ACTIVATED";
      
      public static const const_177:String = "WE_OK";
      
      public static const const_478:String = "WE_CANCEL";
      
      public static const const_109:String = "WE_CHANGE";
      
      public static const const_520:String = "WE_SCROLL";
      
      public static const const_185:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_699:IWindow;
      
      protected var var_1086:Boolean;
      
      protected var var_476:Boolean;
      
      protected var var_484:Boolean;
      
      protected var var_698:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_699 = param3;
         _loc5_.var_476 = param4;
         _loc5_.var_484 = false;
         _loc5_.var_698 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_699;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_476;
      }
      
      public function recycle() : void
      {
         if(this.var_484)
         {
            throw new Error("Event already recycled!");
         }
         this.var_699 = null;
         this._window = null;
         this.var_484 = true;
         this.var_1086 = false;
         this.var_698.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1086;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1086 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1086;
      }
      
      public function stopPropagation() : void
      {
         this.var_1086 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1086 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_476 + " window: " + this._window + " }";
      }
   }
}
