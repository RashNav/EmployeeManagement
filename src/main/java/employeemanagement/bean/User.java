package employeemanagement.bean;

public class User {
    protected int id;
    protected String name;
    protected String nic;
    protected String department;
    protected String designation;
    protected String joinDate;

    public User() {
    }

    public User(String name, String nic, String department, String designation, String joinDate) {
        super();
        this.name = name;
        this.nic = nic;
        this.department = department;
        this.designation = designation;
        this.joinDate = joinDate;
    }

    public User(int id, String name, String nic, String department, String designation, String joinDate) {
        super();
        this.id = id;
        this.name = name;
        this.nic = nic;
        this.department = department;
        this.designation = designation;
        this.joinDate = joinDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(String joinDate) {
        this.joinDate = joinDate;
    }
}
