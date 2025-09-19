using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DLMS_Comms
{
    public class meterObj
    {
            public byte[] obis { get; set; }
            public string name { get; set; }
            public int value { get; set; }

            public meterObj(byte[] obisCode, string objectName, int initialValue)
            {
                obis = obisCode;
                name = objectName;
                value = initialValue;
            }
        
    }
}
