package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_298:int = 0;
      
      private static const const_1093:int = 1;
      
      private static const const_1100:int = 2;
      
      private static const const_1101:int = 3;
      
      private static const const_1096:int = 4;
      
      private static const const_1103:int = 5;
      
      private static const const_1099:int = 6;
      
      private static const const_1608:int = 72;
      
      private static const const_1609:int = 4;
      
      private static const const_1094:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1095:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1097:int = 6;
      
      private static const const_1612:int = 4;
      
      private static const const_675:int = 2;
      
      private static const const_1098:int = 200;
      
      private static const const_299:Array = ["a","b","c","d"];
      
      private static const const_1102:int = 10000;
      
      private static const const_1607:int = 0;
      
      private static const const_674:int = -1;
      
      private static const const_1610:Point = new Point(10,87);
      
      private static const const_1604:int = 162;
      
      private static const const_1605:Number = 0.01;
      
      private static const const_1611:Number = 100;
      
      private static const const_1606:int = 1000;
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_215:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_565:Timer;
      
      private var var_859:ProgressBar;
      
      private var var_329:int = 0;
      
      private var var_1078:int = 0;
      
      private var var_1610:int = 0;
      
      private var var_1333:int = -1;
      
      private var var_858:int = -1;
      
      private var var_1077:int = -1;
      
      private var var_1332:int;
      
      private var var_1609:int;
      
      private var var_2904:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         this.var_215 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_565)
         {
            this.var_565.stop();
            this.var_565 = null;
         }
         if(this.var_859)
         {
            this.var_859.dispose();
            this.var_859 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_215 = param1;
            this.var_1078 = 0;
            this.refreshTrackerDetails();
            this.var_1333 = 0;
            this.var_329 = const_1101;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_215 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_859.refresh(0,100,-1);
            this.var_329 = const_1100;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this._questEngine.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_565 == null && _loc1_ && _loc2_ != "" && this._questEngine.isQuestingEnabled())
         {
            _loc3_ = int(this._questEngine.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_565 = new Timer(_loc3_ * 1000,1);
            this.var_565.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_565.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         this.var_215 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.hideSuccessFrames();
         if(_loc2_)
         {
            this.setupPrompt(this.var_858,const_1612,false);
         }
         else
         {
            this._window.x = this._window.desktop.width;
            this.var_329 = const_1093;
            this.setupPrompt(const_1607,const_675,false);
         }
         this._window.visible = true;
         this._questEngine.notifications.setQuestTrackerVisible(true);
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this._questEngine.isQuestWithPrompts(this.var_215))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_299.length)
         {
            this._questEngine.setupPromptFrameImage(this._window,this.var_215,const_299[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._questEngine.getXmlWindow("QuestTracker"));
         this._window.y = const_1608;
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this._questEngine,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1097)
         {
            new PendingImage(this._questEngine,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_859 = new ProgressBar(this._questEngine,IWindowContainer(this._window.findChildByName("content_cont")),const_1604,"quests.tracker.progress",false,const_1610);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1097)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_299.length)
         {
            this.getPromptFrame(const_299[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this._questEngine.localization.registerParameter("quests.tracker.caption","quest_name",this._questEngine.getQuestName(this.var_215));
         this._window.findChildByName("desc_txt").caption = this._questEngine.getQuestDesc(this.var_215);
         this._window.findChildByName("more_info_txt").visible = true;
         this._window.findChildByName("more_info_region").visible = true;
         var _loc1_:int = Math.round(100 * this.var_215.completedSteps / this.var_215.totalSteps);
         this.var_859.refresh(_loc1_,100,this.var_215.id);
         this._questEngine.setupQuestImage(this._window,this.var_215);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this._questEngine.questController.questDetails.showDetails(this.var_215);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_859.updateView();
         switch(this.var_329)
         {
            case const_1093:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1605));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_329 = const_298;
                  this._window.x = _loc2_;
               }
               break;
            case const_1100:
               _loc2_ = this._window.desktop.width;
               _loc3_ = _loc2_ - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1611 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_329 = const_298;
                  this._window.x = _loc2_;
                  this._window.visible = false;
                  this._questEngine.notifications.setQuestTrackerVisible(false);
               }
               break;
            case const_1101:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1095[this.var_1333]).visible = true;
               ++this.var_1333;
               if(this.var_1333 >= const_1095.length)
               {
                  this.var_329 = const_1103;
                  this.var_1610 = const_1606;
               }
               break;
            case const_1099:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1332 -= param1;
               this.getPromptFrame(const_299[this.var_1077]).visible = true;
               if(this.var_1332 < 0)
               {
                  this.var_1332 = const_1098;
                  ++this.var_1077;
                  if(this.var_1077 >= const_299.length)
                  {
                     this.var_1077 = 0;
                     --this.var_1609;
                     if(this.var_1609 < 1)
                     {
                        this.setupPrompt(const_1102,const_675,true);
                        this.var_329 = const_298;
                     }
                  }
               }
               break;
            case const_1096:
               if(this.var_1078 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_329 = const_298;
                  this.setupPrompt(const_1102,const_675,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1094[this.var_1078];
                  ++this.var_1078;
               }
               break;
            case const_1103:
               this.var_1610 -= param1;
               if(this.var_1610 < 0)
               {
                  this.var_329 = const_298;
                  this._window.visible = false;
               }
               break;
            case const_298:
               if(this.var_858 != const_674)
               {
                  this.var_858 -= param1;
                  if(this.var_858 < 0)
                  {
                     this.var_858 = const_674;
                     if(this.var_215 != null && this._questEngine.isQuestWithPrompts(this.var_215))
                     {
                        if(this.var_2904)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_329 = const_1099;
                           this.var_1077 = 0;
                           this.var_1332 = const_1098;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return this._window.desktop.width - this._window.width - const_1609;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_565.reset();
            this.var_565.start();
         }
         else
         {
            this._questEngine.questController.questDetails.openForNextQuest = this._questEngine.configuration.getKey("questing.showDetailsForNextQuest") == "HabboConfigurationCom_default_configuration";
            this._questEngine.send(new StartCampaignMessageComposer(this.getDefaultCampaign()));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this._questEngine.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this._questEngine.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_674,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_858 = param1;
         this.var_1609 = param2;
         this.var_2904 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1078 = 0;
         this.var_329 = const_1096;
      }
   }
}
