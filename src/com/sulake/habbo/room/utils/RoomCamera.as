package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1571:Number = 12;
       
      
      private var var_2820:int = -1;
      
      private var var_2824:int = -2;
      
      private var var_212:Vector3d = null;
      
      private var var_1299:Number = 0;
      
      private var var_1579:Number = 0;
      
      private var var_2028:Boolean = false;
      
      private var var_195:Vector3d = null;
      
      private var var_2027:Vector3d;
      
      private var var_2821:Boolean = false;
      
      private var var_2828:Boolean = false;
      
      private var var_2822:Boolean = false;
      
      private var var_2825:Boolean = false;
      
      private var var_2826:int = 0;
      
      private var var_2827:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2819:int = 0;
      
      private var var_2823:int = 0;
      
      private var var_1651:int = -1;
      
      private var var_2025:int = 0;
      
      private var var_2026:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2027 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_195;
      }
      
      public function get targetId() : int
      {
         return this.var_2820;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2824;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2027;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2821;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2828;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2822;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2825;
      }
      
      public function get screenWd() : int
      {
         return this.var_2826;
      }
      
      public function get screenHt() : int
      {
         return this.var_2827;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2819;
      }
      
      public function get roomHt() : int
      {
         return this.var_2823;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1651;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_212 != null && this.var_195 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2820 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2027.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2824 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2821 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2828 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2822 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2825 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2826 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2827 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2026 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2819 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2823 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1651 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_212 == null)
         {
            this.var_212 = new Vector3d();
         }
         if(this.var_212.x != param1.x || this.var_212.y != param1.y || this.var_212.z != param1.z)
         {
            this.var_212.assign(param1);
            this.var_2025 = 0;
            _loc2_ = Vector3d.dif(this.var_212,this.var_195);
            this.var_1299 = _loc2_.length;
            this.var_2028 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_212 = null;
         this.var_195 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_195 != null)
         {
            return;
         }
         this.var_195 = new Vector3d();
         this.var_195.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_195 == null)
         {
            this.var_195 = new Vector3d();
         }
         this.var_195.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_212 != null && this.var_195 != null)
         {
            ++this.var_2025;
            if(this.var_2026)
            {
               this.var_2026 = false;
               this.var_195 = this.var_212;
               this.var_212 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_212,this.var_195);
            if(_loc3_.length > this.var_1299)
            {
               this.var_1299 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_195 = this.var_212;
               this.var_212 = null;
               this.var_1579 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1299);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1299 / const_1571;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2028)
               {
                  if(_loc7_ < this.var_1579)
                  {
                     _loc7_ = this.var_1579;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2028 = false;
                  }
               }
               this.var_1579 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_195 = Vector3d.sum(this.var_195,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1651 = -1;
      }
   }
}
