package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_985:IAssetLoader;
      
      private var var_2470:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2470 = param1;
         this.var_985 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2470;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_985;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_985 != null)
            {
               if(!this.var_985.disposed)
               {
                  this.var_985.dispose();
                  this.var_985 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
