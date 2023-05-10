def maxSubArraySum(a)
  size = a.length
  i = 0
  tempMax = 0
  maxSum = a[0]

  while i < size
      tempMax += a[i]

      if maxSum < tempMax
          maxSum = tempMax
      end
      if tempMax < 0
          tempMax = 0
      end
      i +=1
  end
  maxSum
end

a = [-2,-1,-9]
p maxSubArraySum(a)



public class Solution {
    public ArrayList<Integer> solve(final List<Integer> A, final List<Integer> B) {
        int a = A.size();
        int b = B.size();
        ArrayList<Integer> ans = new ArrayList<Integer>();
        int j = 0;
        for(int i=0; i < a; i++) {
            if (j < b) {
                while(A.get(i)>B.get(j)){
                    if(j<b-1){
                        j++;
                    }
                    else {
                        break;
                    }
                }
                if(A.get(i).equals(B.get(j))){
                    ans.add(B.get(j));
                    j++;
                }
            }
            else {
                break;
            }
        }
        return ans;
    }
}



arr1.select{|x| arr2.to_enum.include?(x)}