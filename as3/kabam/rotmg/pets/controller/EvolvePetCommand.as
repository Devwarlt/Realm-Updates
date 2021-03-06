﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.pets.controller.EvolvePetCommand

package kabam.rotmg.pets.controller{
    import com.company.assembleegameclient.editor.Command;
    import kabam.rotmg.dialogs.control.OpenDialogSignal;
    import kabam.rotmg.messaging.impl.EvolvePetInfo;
    import org.swiftsuspenders.Injector;
    import kabam.rotmg.pets.view.dialogs.evolving.EvolveDialog;

    public class EvolvePetCommand extends Command {

        [Inject]
        public var openDialog:OpenDialogSignal;
        [Inject]
        public var evolvePetInfo:EvolvePetInfo;
        [Inject]
        public var injector:Injector;


        override public function execute():void{
            var _local1:EvolveDialog = this.injector.getInstance(EvolveDialog);
            this.openDialog.dispatch(_local1);
            _local1.evolveAnimation.setEvolvedPets(this.evolvePetInfo);
        }


    }
}//package kabam.rotmg.pets.controller

