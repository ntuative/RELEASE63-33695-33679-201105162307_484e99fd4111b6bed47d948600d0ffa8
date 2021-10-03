package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1560:IID;
      
      private var var_1995:String;
      
      private var var_109:IUnknown;
      
      private var var_827:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1560 = param1;
         this.var_1995 = getQualifiedClassName(this.var_1560);
         this.var_109 = param2;
         this.var_827 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1560;
      }
      
      public function get iis() : String
      {
         return this.var_1995;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_109;
      }
      
      public function get references() : uint
      {
         return this.var_827;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_109 == null;
      }
      
      public function dispose() : void
      {
         this.var_1560 = null;
         this.var_1995 = null;
         this.var_109 = null;
         this.var_827 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_827;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_827) : uint(0);
      }
   }
}
