public class test2 {
    integer i1;
    integer i2;
    public test2(){
        i1=10;
        i2=10;
    }
    integer m1(){
        integer i3=i1+i2;
        
        system.debug('i3========'+i3);
        return i3;
    }

}