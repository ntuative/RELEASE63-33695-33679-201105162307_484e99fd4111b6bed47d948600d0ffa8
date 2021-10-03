package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_580:QuestsList;
      
      private var var_490:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_341:QuestTracker;
      
      private var var_891:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_341 = new QuestTracker(this._questEngine);
         this.var_580 = new QuestsList(this._questEngine);
         this.var_490 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_891 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_580.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_580.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_341.onQuest(param1);
         this.var_490.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_341.onQuestCompleted(param1);
         this.var_490.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_341.onQuestCancelled();
         this.var_490.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_341.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_580.onRoomExit();
         this.var_341.onRoomExit();
         this.var_490.onRoomExit();
         this.var_891.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_341.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_580)
         {
            this.var_580.dispose();
            this.var_580 = null;
         }
         if(this.var_341)
         {
            this.var_341.dispose();
            this.var_341 = null;
         }
         if(this.var_490)
         {
            this.var_490.dispose();
            this.var_490 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_891)
         {
            this.var_891.dispose();
            this.var_891 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_580;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_490;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_341;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_891;
      }
   }
}
