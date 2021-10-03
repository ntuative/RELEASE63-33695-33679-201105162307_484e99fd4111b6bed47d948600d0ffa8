package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.ITextWindow;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class TextCropper implements IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_487:TextField;
      
      private var var_882:TextFormat;
      
      private var var_2935:String = "...";
      
      private var var_2936:int = 20;
      
      public function TextCropper()
      {
         super();
         this.var_487 = new TextField();
         this.var_487.autoSize = TextFieldAutoSize.LEFT;
         this.var_882 = this.var_487.defaultTextFormat;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.var_487 = null;
            this._disposed = true;
         }
      }
      
      public function crop(param1:ITextWindow) : void
      {
         var _loc3_:int = 0;
         this.var_882.font = param1.fontFace;
         this.var_882.size = param1.fontSize;
         this.var_882.bold = param1.bold;
         this.var_882.italic = param1.italic;
         this.var_487.setTextFormat(this.var_882);
         this.var_487.text = param1.getLineText(0);
         var _loc2_:int = this.var_487.textWidth;
         if(_loc2_ > param1.width)
         {
            _loc3_ = this.var_487.getCharIndexAtPoint(param1.width - this.var_2936,this.var_487.textHeight / 2);
            param1.text = param1.text.slice(0,_loc3_) + this.var_2935;
         }
      }
   }
}
