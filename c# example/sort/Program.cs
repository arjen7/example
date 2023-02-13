using System;
using System.Diagnostics;
 class Program
 {
     static void creatorarray(List<int> array, int n)
        {
            Random creatorrandom = new Random();
            for (int i = 0; i < n; i++)
            {
                array.Add(creatorrandom.Next(1, 100));
            }
        }

    static List<int> copyArray(List<int> A,List<int> B){
        B.Clear();
        foreach (int var in A)
        {
            B.Add(var);
        }
        return B;
    }
     static void showarray(List<int> array)
        {
            for (int i = 0; i < array.Count; i++)
            {
                Console.Write(array[i].ToString()+"  ");
            }
            Console.WriteLine();
        }

    static void InsertionSort(List<int> array)
        {
            int index, temp;
            for (int i = 1; i < array.Count; i++)
            {
                temp=array[i];
                index=i-1;
                while ( index>=0 && array[index]>temp)
                {
                    array[index+1]=array[index];
                    index--;
                }
                array[index+1]=temp;
            }
        }
    static void SelectionSort(List<int> array)
        {
            int temp,min=0;
            for (int i = 0; i < array.Count; i++)
            {
                min=i;
                for (int j = i + 1; j < array.Count; j++)
                    if (array[j] < array[min])
                        min=j;
                temp=array[i];
                array[i]=array[min];
                array[min]=temp;
            }
        }
    static void BubbleSort(List<int> array)
        {
            int temp;
            bool sort=false;
            while (!sort)
            {
                sort=true;
                for (int i = 0; i < array.Count-1; i++)
                {
                    if (array[i]>array[i+1])
                    {
                        temp=array[i];
                        array[i]=array[i+1];
                        array[i+1]=temp;
                        sort=false;
                    }
                }
            }
        }

    static List<int> quicksort(List<int> array){
        List<int> left=new List<int>();
        List<int> right=new List<int>();
        List<int> mid=new List<int>();

        if (array.Count<2)
            return array;

        for (int i = 0; i < array.Count; i++)
        {
            if (array[i]>array[0])
                right.Add(array[i]);

            else if(array[i]==array[0])
                mid.Add(array[i]);

            else
                left.Add(array[i]);
        }
        array.Clear();
        left = quicksort(left);
        right = quicksort(right);
        array.AddRange(left);
        array.AddRange(mid);
        array.AddRange(right);
        return array;
    }
    static List<int> mergesort(List<int> array){
        List<int> left=new List<int>();
        List<int> right=new List<int>();
        if (array.Count<2)
        {
            return array;
        }
        for (int i = 0; i < array.Count/2; i++)
        {
            left.Add(array[i]);
        }
        for (int i = array.Count/2; i < array.Count; i++)
        {
            right.Add(array[i]);
        }
        array.Clear();
        left=mergesort(left);
        right=mergesort(right);    
        while (true)
        {
            if (left.Count==0&&right.Count==0)
            {
                break;
            }
            else if (left.Count>0 && right.Count==0)
            {
                array.Add(left.First());
                left.Remove(left.First());
            }
            else if (right.Count>0 && left.Count==0)
            {
                array.Add(right.First());
                right.Remove(right.First());
            }
            else
            {
                if (left.First()<right.First())
                {
                    array.Add(left.First());
                    left.Remove(left.First());
                }
                else
                {
                    array.Add(right.First());
                    right.Remove(right.First());
                }
            }
        }
        return array;
    }
    
    static List<int> heapsort(List<int> array){
        List<int> sortedlist=new List<int>();
        int node,index=array.Count-1,temp;

        while (0!=array.Count)
        {
            index=array.Count-1;
            while (index>0)
            {
                node=(index-1)/2;
                if(index%2==0)
                    node=(index-2)/2;
                if (array[index]<array[node])
                {
                    temp=array[index];
                    array[index]=array[node];
                    array[node]=temp;
                }
                index--;
            }
            sortedlist.Add(array[0]);
            array[0]=array.Last();
            array.Remove(array.Last());   
        }
        return sortedlist;
    }
 
         static void Main(string[] args)
        {
            List<int> A = new List<int>();
            List<int> B=new List<int>();
            Stopwatch time=new Stopwatch();

            creatorarray(A,21);
            Console.WriteLine("********************************************************************************");
            Console.WriteLine("siralama algoritmalari calişma testi");
            Console.WriteLine("********************************************************************************");
            
            copyArray(A,B);
            Console.WriteLine("Siralamadan Önce: ");
            showarray(B);
            B=quicksort(B);
            Console.WriteLine("Quick sort : ");
            showarray(B);

            copyArray(A,B);
            Console.WriteLine("Siralamadan Önce: ");
            showarray(B);
            InsertionSort(B);
            Console.WriteLine("Insertion sort : ");
            showarray(B);

            copyArray(A,B);
            Console.WriteLine("Siralamadan Önce: ");
            showarray(B);
            SelectionSort(B);
            Console.WriteLine("Selection sort : ");
            showarray(B);

            copyArray(A,B);
            Console.WriteLine("Siralamadan Önce: ");
            showarray(B);
            BubbleSort(B);
            Console.WriteLine("Bubble sort : ");
            showarray(B);

            copyArray(A,B);
            Console.WriteLine("Siralamadan Önce: ");
            showarray(B);
            B=mergesort(B);
            Console.WriteLine("Merge sort : ");
            showarray(B);

            copyArray(A,B);
            Console.WriteLine("Siralamadan Önce: ");
            showarray(B);
            B=heapsort(B);
            Console.WriteLine("Heap sort:");
            showarray(B);

            A.Clear();
            B.Clear();
            creatorarray(A,10000);
            Console.WriteLine("********************************************************************************");
            Console.WriteLine("Zaman acisindan karsilastirmasi");
            Console.WriteLine("********************************************************************************\n");

            copyArray(A,B);
            Console.WriteLine("Quick sort siralama süresi:");
            time.Start();
            quicksort(B);
            time.Stop();
            Console.WriteLine("time(ms):"+time.ElapsedMilliseconds);

            time.Reset();
            copyArray(A,B);
            Console.WriteLine("Insertion sort siralama süresi:");
            time.Start();
            InsertionSort(B);
            time.Stop();
            Console.WriteLine("time(ms):"+time.ElapsedMilliseconds);

            time.Reset();
            copyArray(A,B);
            Console.WriteLine("Selection sort siralama süresi:");
            time.Start();
            SelectionSort(B);
            time.Stop();
            Console.WriteLine("time(ms):"+time.ElapsedMilliseconds);

            time.Reset();
            copyArray(A,B);
            Console.WriteLine("Bubble sort siralama süresi:");
            time.Start();
            BubbleSort(B);
            time.Stop();
            Console.WriteLine("time(ms):"+time.ElapsedMilliseconds);

            time.Reset();
            copyArray(A,B);
            Console.WriteLine("Merge sort siralama süresi:");
            time.Start();
            mergesort(B);
            time.Stop();
            Console.WriteLine("time(ms):"+time.ElapsedMilliseconds);
 
            time.Reset();
            copyArray(A,B);
            Console.WriteLine("Heap sort siralama süresi:");
            time.Start();
            heapsort(B);
            time.Stop();
            Console.WriteLine("time(ms):"+time.ElapsedMilliseconds);

            Console.ReadLine();
        }
}
