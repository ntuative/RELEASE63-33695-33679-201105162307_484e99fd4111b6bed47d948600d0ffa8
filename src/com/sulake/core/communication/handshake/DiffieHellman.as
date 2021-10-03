package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_952:BigInteger;
      
      private var var_2877:BigInteger;
      
      private var var_2084:BigInteger;
      
      private var var_2887:BigInteger;
      
      private var var_1603:BigInteger;
      
      private var var_2085:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1603 = param1;
         this.var_2085 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1603.toString() + ",generator: " + this.var_2085.toString() + ",secret: " + param1);
         this.var_952 = new BigInteger();
         this.var_952.fromRadix(param1,param2);
         this.var_2877 = this.var_2085.modPow(this.var_952,this.var_1603);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2084 = new BigInteger();
         this.var_2084.fromRadix(param1,param2);
         this.var_2887 = this.var_2084.modPow(this.var_952,this.var_1603);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2877.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2887.toRadix(param1);
      }
   }
}
