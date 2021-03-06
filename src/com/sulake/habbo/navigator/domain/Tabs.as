package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_300:int = 1;
      
      public static const const_210:int = 2;
      
      public static const const_258:int = 3;
      
      public static const const_346:int = 4;
      
      public static const const_189:int = 5;
      
      public static const const_373:int = 1;
      
      public static const const_947:int = 2;
      
      public static const const_705:int = 3;
      
      public static const const_696:int = 4;
      
      public static const const_263:int = 5;
      
      public static const const_854:int = 6;
      
      public static const const_925:int = 7;
      
      public static const const_276:int = 8;
      
      public static const const_408:int = 9;
      
      public static const const_2056:int = 10;
      
      public static const const_749:int = 11;
      
      public static const const_626:int = 12;
       
      
      private var var_429:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_429 = new Array();
         this.var_429.push(new Tab(this._navigator,const_300,const_626,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_599));
         this.var_429.push(new Tab(this._navigator,const_210,const_373,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_599));
         this.var_429.push(new Tab(this._navigator,const_346,const_749,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1146));
         this.var_429.push(new Tab(this._navigator,const_258,const_263,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_599));
         this.var_429.push(new Tab(this._navigator,const_189,const_276,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_808));
         this.setSelectedTab(const_300);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_346;
      }
      
      public function get tabs() : Array
      {
         return this.var_429;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_429)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_429)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_429)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
