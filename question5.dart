// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    // TODO: Calculate total salary (base + bonus)
    return baseSalary + bonus; // Placeholder - replace with actual implementation
  }
  
  void processPayment(double amount) {
    print("Payment processed: ${amount}");
    // TODO: Process payment
    // Add your implementation here
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // TODO: Generate report
    return "Monthly report for $employeeName in $department department"; // Placeholder - replace with actual implementation
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  
  Employee(this.name, this.id, this.department);
  String name;
  String id;
  String department;
  
  String getJobTitle();
  double getBaseSalary();
  
  void displayInfo() {
    print('$name (ID: $id, Department: $department)');
    print('Job Title: ${getJobTitle()}');
    print('Base Salary: ${getBaseSalary()}');
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;
  
  Manager(String name, String id, String department, this.teamSize)
    : super(name, id, department);

  
  @override
  String getJobTitle() {
    // TODO: Return manager job title
    return "Manager"; // Placeholder - replace with actual implementation
  }
  
  @override
  double getBaseSalary() {
    // TODO: Return manager base salary
    return 8000.0; // Placeholder - replace with actual implementation
  }
  
  @override
  void displayInfo() {
    super.displayInfo();
    print("Team Size: $teamSize");
    print("Total salary (with bonus): \$${calculateSalary(getBaseSalary(), 1000).toStringAsFixed(2)}");

    print(generateReport(name, department));
    // TODO: Override to show manager-specific info
    // Add your implementation here
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;
  
  Developer(String name, String id, String department, this.programmingLanguage)
    : super(name, id, department);

  
  @override
  String getJobTitle() {
    // TODO: Return developer job title
    return 'Senior Developer'; // Placeholder - replace with actual implementation
  }
  
  @override
  double getBaseSalary() {
    // TODO: Return developer base salary
    return 6000.0; // Placeholder - replace with actual implementation
  }
  
  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Language: $programmingLanguage");

    print("Total Salary (with bonus): \$${calculateSalary(getBaseSalary(), 500).toStringAsFixed(2)}");
    // TODO: Override to show developer-specific info
    // Add your implementation here
  }
}


  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information
  
void main() {
  Manager manager1 = Manager("John Smith", "M001", "IT", 5);
  Developer dev1 = Developer("Alice Johnson", "D001", "IT", "Dart");

  
  // Salary calculation and payment processing
  manager1.processPayment(manager1.calculateSalary(manager1.getBaseSalary(), 1000));
  dev1.processPayment(dev1.calculateSalary(dev1.getBaseSalary(), 500));
  
  // Display all employee information
  manager1.displayInfo();
  dev1.displayInfo();
}
  

