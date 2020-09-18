pragma solidity ^0.5.17;

contract StructDemo{ 

struct Student{ 
	int number; 
	string name; 
	string gender; 
	int year; 
} 

Student []students; 

function addStudent( int number, string memory name, string memory gender, int year ) public
{ 
	Student memory s =Student(number, name, gender, year); 
	students.push(s); 
} 

function getStudent(int number) public view returns( string memory, string memory, int)
{ 
	uint i; 
	for(i=0;i<students.length;i++) 
	{ 
		Student memory s=students[i]; 
		if(s.number==number) 
		{ 
				return(s.name, 
					s.gender, 
					s.year); 
		} 
	} 
	return("Not Found", "Not Found", 0); 
}

function editStudentName(int number, string memory name) public 
{ 
	uint i; 
	for(i=0;i<students.length;i++) 
	{ 
		Student memory s=students[i]; 
		if(s.number==number) 
		{ 
				s.name = name; 
		} 
	} 
}

function editStudentGender(int number, string memory gender) public 
{ 
	uint i; 
	for(i=0;i<students.length;i++) 
	{ 
		Student memory s=students[i]; 
		if(s.number==number) 
		{ 
				s.gender = gender; 
		} 
	} 
}
function editStudentYear(int number, int year) public 
{ 
	uint i; 
	for(i=0;i<students.length;i++) 
	{ 
		Student memory s=students[i]; 
		if(s.number==number) 
		{ 
				s.year = year; 
		} 
	} 
}


}
