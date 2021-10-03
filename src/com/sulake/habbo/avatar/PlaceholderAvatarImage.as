package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_789:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1090)
         {
            _structure = null;
            _assets = null;
            var_246 = null;
            var_286 = null;
            var_626 = null;
            var_569 = null;
            var_333 = null;
            if(!var_1352 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_715 = null;
            var_1090 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_789[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_789[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_380:
               switch(_loc3_)
               {
                  case AvatarAction.const_941:
                  case AvatarAction.const_507:
                  case AvatarAction.const_400:
                  case AvatarAction.const_683:
                  case AvatarAction.const_390:
                  case AvatarAction.const_905:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_314:
            case AvatarAction.const_684:
            case AvatarAction.const_236:
            case AvatarAction.const_892:
            case AvatarAction.const_906:
            case AvatarAction.const_890:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
