 int[] mergesort(int[] dizi){
        int lenght=dizi.Length%2;
        int[] left=new int[dizi.Length/2];
        int[] right=new int[dizi.Length/2+lenght];
        if (dizi.Length>2)
        {
            for (int i = 0; i < dizi.Length/2; i++)
            {
                left[i]=dizi[i];
            }
            for (int i = dizi.Length/2+1,j=0; i < dizi.Length; j++,i++)
            {
                right[j]=dizi[i];
            }
        }
        if (left.Length>2)
        {
            mergesort(left);
        }
        if (right.Length>2)
        {
            mergesort(right);
        }
        int x=0,y=0,k=0;
        while (x<left.Length && y<right.Length)
        {
            if (left[x]<right[y])
            {
                dizi[k]=left[x];
                x++;k++;
            }
            else
            {
                dizi[k]=right[y];
                y++;k++;
            }
        }
        return dizi;
    }