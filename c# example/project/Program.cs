struct Customer{
    public int boxOfficeNo,processingTime, tradingHour;
}
class Program
{
  static  public Customer newCustomer(int boxOfficeNo,int processingTime,int tradingHour){
    Customer x=new Customer{};
    x.boxOfficeNo=boxOfficeNo;
    x.processingTime=processingTime;
    x.tradingHour=tradingHour;
    return x;
}
static public double hour(int x){
    double h=x/60;
    double m=x-h*60;
    return h+8+(m*(0.01));
}
 static void Main(string[] arg){
    Random randomGenerator=new Random{};
    Queue<Customer> customers=new Queue<Customer>{};
    int boxOffice1tradingHour=0;
    int boxOffice2tradingHour=0;
    int arriveTime=0;
    int coldownBoxOffice1=0,coldownBoxOffice2=0;
    while (true)
    {
        arriveTime=randomGenerator.Next(1,10);
        int processingTime=randomGenerator.Next(1,11);
        if(boxOffice1tradingHour>=540&&boxOffice2tradingHour>=540){
            break;
        }
        else if(boxOffice1tradingHour<=boxOffice2tradingHour){
            if (arriveTime>coldownBoxOffice1)
            {
                boxOffice1tradingHour+=(arriveTime-coldownBoxOffice1);
                coldownBoxOffice1=0;
            }
            customers.Enqueue(newCustomer(1,processingTime,boxOffice1tradingHour));
            boxOffice1tradingHour+=processingTime;
            coldownBoxOffice1=processingTime;
        }
        else{
               if (arriveTime>coldownBoxOffice2)
            {
                boxOffice2tradingHour+=(arriveTime-coldownBoxOffice2);
                coldownBoxOffice2=0;
            }
            customers.Enqueue(newCustomer(2,processingTime,boxOffice2tradingHour));
            boxOffice2tradingHour+=processingTime;
            coldownBoxOffice2=processingTime;
        }
    }
           int g=1;
       foreach (Customer var in customers)
       {
        Console.Write("musteri no:"+g.ToString()+"\t");
        Console.Write("gişe no:"+var.boxOfficeNo.ToString()+"\t");
        Console.Write("islem suresi:"+var.processingTime.ToString()+" dk \t");
        Console.Write("islem tarihi:"+hour(var.tradingHour).ToString()+"\n");
        g++;
       }
}
}