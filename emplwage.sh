public class EmployeeWage {

       public static final int IS_PART_TIME = 1;
       public static final int IS_FULL_TIME = 2;

       private  final String company;
       private final int empRatePerHour;
       private final int numOfWorkingDays;
       private final int maxHoursPerMonth;
       private  int totalEmpWage;

       public EmployeeWage(String company, int empRatePerHour, int numOfWorkingDays, int maxHoursPerMonth) {
           this.company = company;
           this.empRatePerHour = empRatePerHour;
	   this.numOfWorkingDays = numOfWorkingDays;
	   this.maxHoursPerMonth = maxHoursPerMonth;   
	}
       public void computeEmpWage() {
           int empHrs = 0;
           int totalWorkingDays = 0;
           int totalEmpHrs = 0;
	 while (totalEmpHrs <= maxHoursPerMonth && totalWorkingDays < numOfWorkingDays) {
         totalWorkingDays++;
         int empCheck = (int) Math.floor(Math.random() * 10) % 3;
           switch (empCheck) {
           case IS_PART_TIME:
           System.out.println("Present");
           empHrs = 4;
           break;
           case IS_FULL_TIME:
           System.out.println("Present");
           empHrs = 8;
           break;
           default:
           System.out.println("Absent");
           empHrs = 0;
           }
           totalEmpHrs += empHrs;
           System.out.println("Day : " + totalWorkingDays + "Emp Hr: " +empHrs);
   
          }
	   totalEmpWage = totalEmpHrs * empRatePerHour;
         }
           @Override
           public String toString() {
           return "Total Emp Wage for Company : " +company+" is: "+ totalEmpWage;
       }
            public static void main(String[] args) {
            EmployeeWage dMart = new  EmployeeWage("Dmart",20,2,10);
            EmployeeWage relience = new EmployeeWage("Reliance", 10, 4, 20);
  	    dMart.computeEmpWage();
	    System.out.println(dMart);
	    relience.computeEmpWage();
            System.out.println(relience);

     }

}

