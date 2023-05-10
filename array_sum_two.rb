def addArrays(a, b)
    if a.length == b.length
      n = a.length
    elsif a.length < b.length
      n = a.length
    else
      n = b.length
    end

    i = 0
    while i < n
      a[i] = a[i] + b[i]
      i +=1
    end
    b
end

A = [1, 2, 3,5]
B = [2, 5, 5,8,9]

p addArrays(A,B)


return [] if a == [] || b == []
res = []
smaller, bigger = a.length > b.length ? [b, a] : [a, b]
smaller = smaller.dup
b_idx = 0
curr = smaller.shift
while b_idx < bigger.length && curr
    b_idx += 1 while bigger[b_idx] && bigger[b_idx] < curr
    if curr == bigger[b_idx]
        res << curr
        b_idx += 1
        curr = smaller.shift
    else
        curr = smaller.shift
    end
end
res



Editorial
Fastest
Lightweight
public class Solution {
    // DO NOT MODIFY THE LIST. IT IS READ ONLY
    public ArrayList<Integer> intersect(final List<Integer> A, final List<Integer> B) {
        int a  = A.size() ;
        int b = B.size() ;
        ArrayList<Integer> ans  = new ArrayList<Integer>() ;
        int j = 0 ;
        for (int i =0 ; i<a ;i++ ){
            //System.out.println(j) ;
            if (j<b){
                //System.out.println("1 > " +j ) ;
                while (A.get(i)>B.get(j)){
                    //System.out.println(j) ;
                    if (j<b-1){
                        j++ ;
                        //System.out.println(j) ;
                    }
                    else {
                        break ;
                    }
                }
                //System.out.println("2 >  i is " +(A.get(i)==B.get(j)) + " j is "+B.get(j)) ;
                if (A.get(i).equals(B.get(j))){
                    //System.out.println(j) ;
                    ans.add(B.get(j)) ;
                    j++ ;
                }
                
            }
            else {
                break ;
            }
        }
        return ans ;
    }
}
