package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2201:int = 0;
      
      protected static const const_634:int = 1;
      
      protected static const const_1930:int = 2;
      
      protected static const const_1932:int = 3;
      
      protected static const const_130:int = 4;
      
      protected static const const_635:int = 8;
      
      protected static const const_268:int = 18;
      
      protected static const const_1931:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1831:Boolean = false;
      
      protected var var_47:BitmapDataAsset;
      
      protected var var_85:IBitmapWrapperWindow;
      
      private var var_1254:uint;
      
      protected var var_211:Timer;
      
      protected var _frame:int = 0;
      
      private var var_659:Point;
      
      protected var var_874:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1254 = const_634 | const_635;
         this.var_659 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1831;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_47 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_47;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_85 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_85;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1254 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1254;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_874 = param1;
         if(this.var_874 && this.var_1831)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1831 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_85 && !this.var_85.disposed)
         {
            if(!this.var_85.bitmap)
            {
               this.var_85.bitmap = new BitmapData(this.var_85.width,this.var_85.height,true,0);
            }
            else
            {
               this.var_85.bitmap.fillRect(this.var_85.bitmap.rect,0);
            }
            if(this.var_47 && !this.var_47.disposed)
            {
               this.var_659.x = this.var_659.y = 0;
               _loc1_ = this.var_47.content as BitmapData;
               switch(this.var_1254 & const_1932)
               {
                  case const_634:
                     this.var_659.x = this.var_85.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1930:
                     this.var_659.x = this.var_85.bitmap.width - _loc1_.width;
               }
               switch(this.var_1254 & const_1931)
               {
                  case const_635:
                     this.var_659.y = this.var_85.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_268:
                     this.var_659.y = this.var_85.bitmap.height - _loc1_.height;
               }
               this.var_85.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_659);
               this.var_85.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_211)
            {
               this.var_211 = new Timer(param2,0);
               this.var_211.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_211.start();
               this.onTimerEvent(null);
            }
            this.var_211.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_211)
            {
               this.var_211.reset();
               this.var_211.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_211 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
