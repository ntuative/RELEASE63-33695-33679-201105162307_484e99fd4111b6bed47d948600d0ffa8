package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2402:String;
      
      private var var_2400:Class;
      
      private var var_2401:Class;
      
      private var var_1741:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2402 = param1;
         this.var_2400 = param2;
         this.var_2401 = param3;
         if(rest == null)
         {
            this.var_1741 = new Array();
         }
         else
         {
            this.var_1741 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2402;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2400;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2401;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1741;
      }
   }
}
