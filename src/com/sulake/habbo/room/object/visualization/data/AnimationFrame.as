package com.sulake.habbo.room.object.visualization.data
{
   public class AnimationFrame
   {
      
      public static const const_523:int = -1;
      
      public static const const_1246:int = -1;
      
      private static const const_1448:int = 3000;
      
      private static const POOL:Array = [];
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_173:int = 0;
      
      private var var_2534:int = 1;
      
      private var var_967:int = 1;
      
      private var var_1832:int = 1;
      
      private var var_2536:int = -1;
      
      private var var_2535:int = 0;
      
      private var var_2533:Boolean = false;
      
      private var _isRecycled:Boolean = false;
      
      public function AnimationFrame()
      {
         super();
      }
      
      public static function allocate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0) : AnimationFrame
      {
         var _loc9_:AnimationFrame = false ? POOL.pop() : new AnimationFrame();
         _loc9_._isRecycled = false;
         _loc9_._id = param1;
         _loc9_._x = param2;
         _loc9_.var_173 = param3;
         _loc9_.var_2533 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         _loc9_.var_2534 = param4;
         if(param5 < 0)
         {
            param5 = const_523;
         }
         _loc9_.var_967 = param5;
         _loc9_.var_1832 = param5;
         if(param7 >= 0)
         {
            _loc9_.var_2536 = param7;
            _loc9_.var_2535 = param8;
         }
         return _loc9_;
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_173;
      }
      
      public function get repeats() : int
      {
         return this.var_2534;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_967;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2533;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_967 < 0)
         {
            return const_523;
         }
         return this.var_1832;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_967 > 0 && param1 > this.var_967)
         {
            param1 = this.var_967;
         }
         this.var_1832 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2536;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2535;
      }
      
      public function recycle() : void
      {
         if(!this._isRecycled)
         {
            this._isRecycled = true;
            if(POOL.length < const_1448)
            {
               POOL.push(this);
            }
         }
      }
   }
}
