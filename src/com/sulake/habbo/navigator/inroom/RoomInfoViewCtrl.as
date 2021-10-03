package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_185:IWindowContainer;
      
      private var var_2958:int;
      
      private var var_368:RoomEventViewCtrl;
      
      private var var_371:Timer;
      
      private var var_141:RoomSettingsCtrl;
      
      private var var_260:RoomThumbnailCtrl;
      
      private var var_982:TagRenderer;
      
      private var var_370:IWindowContainer;
      
      private var var_369:IWindowContainer;
      
      private var var_638:IWindowContainer;
      
      private var var_1857:IWindowContainer;
      
      private var var_1860:IWindowContainer;
      
      private var var_1202:IWindowContainer;
      
      private var var_980:ITextWindow;
      
      private var var_978:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_785:ITextWindow;
      
      private var var_1201:ITextWindow;
      
      private var var_981:ITextWindow;
      
      private var var_787:ITextWindow;
      
      private var var_1479:ITextWindow;
      
      private var var_259:IWindowContainer;
      
      private var var_783:IWindowContainer;
      
      private var var_1477:IWindowContainer;
      
      private var var_1859:ITextWindow;
      
      private var var_639:ITextWindow;
      
      private var var_1858:IWindow;
      
      private var var_1198:IContainerButtonWindow;
      
      private var var_1204:IContainerButtonWindow;
      
      private var var_1200:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1199:IContainerButtonWindow;
      
      private var var_1478:IButtonWindow;
      
      private var var_1476:IButtonWindow;
      
      private var var_1480:IButtonWindow;
      
      private var var_784:IWindowContainer;
      
      private var var_1203:ITextWindow;
      
      private var var_979:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_786:IButtonWindow;
      
      private var var_2957:String;
      
      private const const_909:int = 75;
      
      private const const_970:int = 3;
      
      private const const_858:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_368 = new RoomEventViewCtrl(this._navigator);
         this.var_141 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_260 = new RoomThumbnailCtrl(this._navigator);
         this.var_982 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_141);
         this.var_371 = new Timer(6000,1);
         this.var_371.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_371)
         {
            this.var_371.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_371.reset();
            this.var_371 = null;
         }
         this._navigator = null;
         this.var_368 = null;
         this.var_141 = null;
         this.var_260 = null;
         if(this.var_982)
         {
            this.var_982.dispose();
            this.var_982 = null;
         }
         this.var_185 = null;
         this.var_370 = null;
         this.var_369 = null;
         this.var_638 = null;
         this.var_1857 = null;
         this.var_1860 = null;
         this.var_1202 = null;
         this.var_980 = null;
         this.var_978 = null;
         this._ownerName = null;
         this.var_785 = null;
         this.var_1201 = null;
         this.var_981 = null;
         this.var_787 = null;
         this.var_1479 = null;
         this.var_259 = null;
         this.var_783 = null;
         this.var_1477 = null;
         this.var_1859 = null;
         this.var_639 = null;
         this.var_1858 = null;
         this.var_1198 = null;
         this.var_1204 = null;
         this.var_1200 = null;
         this._remFavouriteButton = null;
         this.var_1199 = null;
         this.var_1478 = null;
         this.var_1476 = null;
         this.var_1480 = null;
         this.var_784 = null;
         this.var_1203 = null;
         this.var_979 = null;
         this._buttons = null;
         this.var_786 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_371.reset();
         this.var_368.active = true;
         this.var_141.active = false;
         this.var_260.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_371.reset();
         this.var_141.load(param1);
         this.var_141.active = true;
         this.var_368.active = false;
         this.var_260.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_141.active = true;
         this.var_368.active = false;
         this.var_260.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_371.reset();
         this.var_141.active = false;
         this.var_368.active = false;
         this.var_260.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_371.reset();
         this.var_368.active = false;
         this.var_141.active = false;
         this.var_260.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_970;
         this._window.y = this.const_909;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_185,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_185.height = Util.getLowestPoint(this.var_185);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_858;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_370);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_141.refresh(this.var_370);
         this.var_260.refresh(this.var_370);
         Util.moveChildrenToColumn(this.var_370,["room_details","room_buttons"],0,2);
         this.var_370.height = Util.getLowestPoint(this.var_370);
         this.var_370.visible = true;
         Logger.log("XORP: " + this.var_369.visible + ", " + this.var_1202.visible + ", " + this.var_638.visible + ", " + this.var_638.rectangle + ", " + this.var_370.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_259);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_368.refresh(this.var_259);
         if(Util.hasVisibleChildren(this.var_259) && !(this.var_141.active || this.var_260.active))
         {
            Util.moveChildrenToColumn(this.var_259,["event_details","event_buttons"],0,2);
            this.var_259.height = Util.getLowestPoint(this.var_259);
            this.var_259.visible = true;
         }
         else
         {
            this.var_259.visible = false;
         }
         Logger.log("EVENT: " + this.var_259.visible + ", " + this.var_259.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","HabboRoomUICom_icon_cd_big") == "HabboConfigurationCom_default_configuration";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_141.active && !this.var_260.active && !this.var_368.active)
         {
            this.var_784.visible = true;
            this.var_979.text = this.getEmbedData();
         }
         else
         {
            this.var_784.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_141.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_786)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_786.visible = _loc1_;
            if(this.var_2957 == "0")
            {
               this.var_786.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_786.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_141.active || this.var_260.active)
         {
            return;
         }
         this.var_980.text = param1.roomName;
         this.var_980.height = this.var_980.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_785.text = param1.description;
         this.var_982.refreshTags(this.var_369,param1.tags);
         this.var_785.visible = false;
         if(param1.description != "")
         {
            this.var_785.height = this.var_785.textHeight + 5;
            this.var_785.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1204,"facebook_logo_small",_loc3_,null,0);
         this.var_1204.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1198,"thumb_up",_loc4_,null,0);
         this.var_1198.visible = _loc4_;
         this.var_787.visible = !_loc4_;
         this.var_1479.visible = !_loc4_;
         this.var_1479.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_369,"home",param2,null,0);
         this._navigator.refreshButton(this.var_369,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_369,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_980.y,0);
         this.var_369.visible = true;
         this.var_369.height = Util.getLowestPoint(this.var_369);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_369.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_141.active || this.var_260.active)
         {
            return;
         }
         this.var_978.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_978.height = this.var_978.textHeight + 5;
         this.var_1201.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1201.height = this.var_1201.textHeight + 5;
         Util.moveChildrenToColumn(this.var_638,["public_space_name","public_space_desc"],this.var_978.y,0);
         this.var_638.visible = true;
         this.var_638.height = Math.max(86,Util.getLowestPoint(this.var_638));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_368.active)
         {
            return;
         }
         this.var_1859.text = param1.eventName;
         this.var_639.text = param1.eventDescription;
         this.var_982.refreshTags(this.var_783,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_639.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_639.height = this.var_639.textHeight + 5;
            this.var_639.y = Util.getLowestPoint(this.var_783) + 2;
            this.var_639.visible = true;
         }
         this.var_783.visible = true;
         this.var_783.height = Util.getLowestPoint(this.var_783);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_141.active || this.var_260.active)
         {
            return;
         }
         this.var_1478.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1200.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1199.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1202.visible = Util.hasVisibleChildren(this.var_1202);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_368.active)
         {
            return;
         }
         this.var_1476.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1480.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1477.visible = Util.hasVisibleChildren(this.var_1477);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_185 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_370 = IWindowContainer(this.find("room_info"));
         this.var_369 = IWindowContainer(this.find("room_details"));
         this.var_638 = IWindowContainer(this.find("public_space_details"));
         this.var_1857 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1860 = IWindowContainer(this.find("rating_cont"));
         this.var_1202 = IWindowContainer(this.find("room_buttons"));
         this.var_980 = ITextWindow(this.find("room_name"));
         this.var_978 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_785 = ITextWindow(this.find("room_desc"));
         this.var_1201 = ITextWindow(this.find("public_space_desc"));
         this.var_981 = ITextWindow(this.find("owner_caption"));
         this.var_787 = ITextWindow(this.find("rating_caption"));
         this.var_1479 = ITextWindow(this.find("rating_txt"));
         this.var_259 = IWindowContainer(this.find("event_info"));
         this.var_783 = IWindowContainer(this.find("event_details"));
         this.var_1477 = IWindowContainer(this.find("event_buttons"));
         this.var_1859 = ITextWindow(this.find("event_name"));
         this.var_639 = ITextWindow(this.find("event_desc"));
         this.var_1204 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1198 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1858 = this.find("staff_pick_button");
         this.var_1200 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1199 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1478 = IButtonWindow(this.find("room_settings_button"));
         this.var_1476 = IButtonWindow(this.find("create_event_button"));
         this.var_1480 = IButtonWindow(this.find("edit_event_button"));
         this.var_784 = IWindowContainer(this.find("embed_info"));
         this.var_1203 = ITextWindow(this.find("embed_info_txt"));
         this.var_979 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_786 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1200,this.onAddFavouriteClick);
         Util.setProcDirectly(this._remFavouriteButton,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1478,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1199,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1476,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1480,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_979,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1198,this.onThumbUp);
         Util.setProcDirectly(this.var_1858,this.onStaffPick);
         Util.setProcDirectly(this.var_1204,this.onFacebookLike);
         Util.setProcDirectly(this.var_786,this.onZoomClick);
         this._navigator.refreshButton(this.var_1200,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1199,"home",true,null,0);
         this._window.findChildByTag("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_370,this.onHover);
         Util.setProcDirectly(this.var_259,this.onHover);
         this.var_981.width = this.var_981.textWidth;
         Util.moveChildrenToRow(this.var_1857,["owner_caption","owner_name"],this.var_981.x,this.var_981.y,3);
         this.var_787.width = this.var_787.textWidth;
         Util.moveChildrenToRow(this.var_1860,["rating_caption","rating_txt"],this.var_787.x,this.var_787.y,3);
         this.var_1203.height = this.var_1203.textHeight + 5;
         Util.moveChildrenToColumn(this.var_784,["embed_info_txt","embed_src_txt"],this.var_1203.y,2);
         this.var_784.height = Util.getLowestPoint(this.var_784) + 5;
         this.var_2958 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_979.setSelection(0,this.var_979.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.ZOOM_TOGGLE));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_371.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_141 != null)
         {
            this.var_141.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
