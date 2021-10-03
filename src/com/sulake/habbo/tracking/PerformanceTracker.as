package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_191:IHabboConfigurationManager = null;
      
      private var var_574:int = 0;
      
      private var var_502:Number = 0;
      
      private var var_2947:Array;
      
      private var var_1416:String = "";
      
      private var var_1734:String = "";
      
      private var var_2393:String = "";
      
      private var var_2572:String = "";
      
      private var var_1851:Boolean = false;
      
      private var var_1737:GarbageMonitor = null;
      
      private var var_1414:int = 0;
      
      private var var_2396:Boolean;
      
      private var var_1733:int = 1000;
      
      private var var_1413:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1736:int = 0;
      
      private var var_1735:int = 10;
      
      private var var_1415:int = 0;
      
      private var var_2394:Number = 0.15;
      
      private var var_2397:Boolean = true;
      
      private var var_2395:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2947 = [];
         super();
         this.var_1734 = Capabilities.version;
         this.var_2393 = Capabilities.os;
         this.var_1851 = Capabilities.isDebugger;
         this.var_1416 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1416 == null)
         {
            this.var_1416 = "unknown";
         }
         this.var_1737 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1736 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1734;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_502;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1733 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1735 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_191 = param1;
         this._reportInterval = int(this.var_191.getKey("performancetest.interval","60"));
         this.var_1733 = int(this.var_191.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1735 = int(this.var_191.getKey("performancetest.reportlimit","10"));
         this.var_2394 = Number(this.var_191.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2397 = Boolean(int(this.var_191.getKey("performancetest.distribution.enabled","1")));
         this.var_2396 = Boolean(this.var_191.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1737.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1737.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2396)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1414;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1733)
         {
            ++this.var_1413;
            _loc3_ = true;
         }
         else
         {
            ++this.var_574;
            if(this.var_574 <= 1)
            {
               this.var_502 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_574);
               this.var_502 = this.var_502 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1736 > this._reportInterval * 1000 && this.var_1415 < this.var_1735)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_502 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2397 && this.var_1415 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2395,this.var_502);
               if(_loc8_ < this.var_2394)
               {
                  _loc7_ = false;
               }
            }
            this.var_1736 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2395 = this.var_502;
               if(this.sendReport(param2))
               {
                  ++this.var_1415;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1416,this.var_1734,this.var_2393,this.var_2572,this.var_1851,_loc5_,_loc4_,this.var_1414,this.var_502,this.var_1413);
            this._connection.send(_loc2_);
            this.var_1414 = 0;
            this.var_502 = 0;
            this.var_574 = 0;
            this.var_1413 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
