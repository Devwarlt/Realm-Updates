﻿// Decompiled by AS3 Sorcerer 1.40
// http://www.as3sorcerer.com/

//kabam.rotmg.application.impl.Testing2Setup

package kabam.rotmg.application.impl{
    import com.company.assembleegameclient.parameters.Parameters;
    import kabam.rotmg.application.api.*;

    public class Testing2Setup implements ApplicationSetup {

        private const SERVER:String = "realmtesting2.appspot.com";
        private const UNENCRYPTED:String = ("http://" + Testing2Setup.SERVER);
        private const ENCRYPTED:String = ("https://" + Testing2Setup.SERVER);
        private const ANALYTICS:String = "UA-11236645-6";
        private const BUILD_LABEL:String = "<font color='#FF0000'>TESTING 2 </font> #{VERSION}";


        public function getAppEngineUrl(_arg1:Boolean=false):String{
            return (((_arg1) ? this.UNENCRYPTED : this.ENCRYPTED));
        }

        public function getAnalyticsCode():String{
            return (this.ANALYTICS);
        }

        public function getBuildLabel():String{
            var _local1:String = ((Parameters.BUILD_VERSION + ".") + Parameters.MINOR_VERSION);
            return (this.BUILD_LABEL.replace("{VERSION}", _local1));
        }

        public function useLocalTextures():Boolean{
            return (true);
        }

        public function isToolingEnabled():Boolean{
            return (true);
        }

        public function isGameLoopMonitored():Boolean{
            return (true);
        }

        public function areErrorsReported():Boolean{
            return (false);
        }

        public function useProductionDialogs():Boolean{
            return (true);
        }

        public function areDeveloperHotkeysEnabled():Boolean{
            return (false);
        }

        public function isDebug():Boolean{
            return (false);
        }


    }
}//package kabam.rotmg.application.impl

