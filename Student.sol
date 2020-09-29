pragma solidity ^0.5.17;
contract Student {
    
    struct stu
    {
        string name;
        int number;
        string gender;
        int year;
        int rand;
    }
    
    mapping (address => stu) students;
    address[] public studentsAccts;
    
    function setStudent(string memory name, string memory gender, int number, int year, address Number ) public {
        stu memory student = students[Number];
        student.name = name;
        student.gender = gender;
        student.year = year;
        student.number = number;
        studentsAccts.push(Number) -1;
        //add a comment
    }
    
    function getStudent(address Number) view public returns (string memory, string memory, int, int) {
        return (students[Number].name, students[Number].gender, students[Number].number, students[Number].year);
    }
    
}
