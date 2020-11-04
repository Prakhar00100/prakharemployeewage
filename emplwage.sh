public class EmployeeWage {
      public static final int IS_PART_TIME = 1;
      public static final int IS_FULL_TIME = 2;

      public static int computeEmpWage(String company, int empRatePerHour, int numofWorkingDays, int maxHoursPerMonth) {
      int empHrs = 0;
      int totalWorkingDays = 0;
      int totalEmpHrs = 0;
      while (totalEmpHrs <= maxHoursPerMonth && totalWorkingDays < numofWorkingDays) {
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
           int totalEmpWage = totalEmpHrs * empRatePerHour;
           System.out.println("Total Emp Wage for company : " +company+ " is: " +totalEmpWage);
           return totalEmpWage;
        }

        public static void main(String[] args) {
        computeEmpWage("Dmart", 20, 2, 10);
        computeEmpWage("Reliance", 10, 4, 20);
    }
}

