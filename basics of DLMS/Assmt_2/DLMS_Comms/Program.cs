namespace DLMS_Comms
{
    internal class Program
    {
        static meterObj[] meterObjects;

        static void Main(string[] args)
        {
            InitializeMeterObjects();

            get_set_act dlmsService = new get_set_act(meterObjects);

            // Test GET operation
            byte[] testObis = obisCodeHelper.ACTIVE_ENERGY;
            // You'll need to make DlmsGet public and accessible
            // dlmsService.DlmsGet(testObis);

            // Test SET operation
            dlmsService.DlmsSet(testObis, 100);

            Console.WriteLine("DLMS GET/SET Service Demo");
        }

        static void InitializeMeterObjects()
        {
            meterObjects = new meterObj[]
            {
                new meterObj(obisCodeHelper.ACTIVE_ENERGY, "Active Energy", 12345),
                new meterObj(obisCodeHelper.REACTIVE_ENERGY, "Reactive Energy", 6789),
                new meterObj(obisCodeHelper.VOLTAGE, "Voltage", 230),
                new meterObj(obisCodeHelper.CURRENT, "Current", 5),
                // Add more meter objects as needed
            };
        }
    }
}
