﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.view.components.PetAbilityDisplayMediator

package kabam.rotmg.pets.view.components{
    import robotlegs.bender.bundles.mvcs.Mediator;
    import kabam.rotmg.core.signals.ShowTooltipSignal;
    import com.company.assembleegameclient.ui.tooltip.ToolTip;

    public class PetAbilityDisplayMediator extends Mediator {

        [Inject]
        public var view:PetAbilityDisplay;
        [Inject]
        public var showToolTip:ShowTooltipSignal;


        override public function initialize():void{
            this.view.addToolTip.add(this.onAddToolTip);
        }

        override public function destroy():void{
            this.view.destroy();
        }

        private function onAddToolTip(_arg1:ToolTip):void{
            this.showToolTip.dispatch(_arg1);
        }


    }
}//package kabam.rotmg.pets.view.components

