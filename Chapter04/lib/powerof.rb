
class Mathpower

  def PowerOf(basenumber, raisedto)
    result = 1;
    basenumber = basenumber.to_i();
    raisedto = raisedto.to_i();
    if raisedto>=1 
      for count in 1 .. raisedto do
        result = result*basenumber;
      end
    elsif raisedto==0
      result = 1;
    else 
       for coun in 1 .. (raisedto*-1) do
        result = result.to_f() / basenumber.to_f();
      end
    end
    return result;
  end

end

