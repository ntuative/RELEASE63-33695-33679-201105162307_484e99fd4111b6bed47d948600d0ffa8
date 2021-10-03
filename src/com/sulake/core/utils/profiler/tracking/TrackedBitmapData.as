package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_1996:int = 16777215;
      
      public static const const_1263:int = 8191;
      
      public static const const_1151:int = 8191;
      
      public static const const_2176:int = 1;
      
      public static const const_1295:int = 1;
      
      public static const const_1131:int = 1;
      
      private static var var_513:uint = 0;
      
      private static var var_512:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1263)
         {
            param2 = const_1263;
         }
         else if(param2 < const_1295)
         {
            param2 = const_1295;
         }
         if(param3 > const_1151)
         {
            param3 = const_1151;
         }
         else if(param3 < const_1131)
         {
            param3 = const_1131;
         }
         super(param2,param3,param4,param5);
         ++var_513;
         var_512 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_513;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_512;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_512 -= width * height * 4;
            --var_513;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
