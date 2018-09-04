package com.wiktor.Model;

import com.wiktor.Annotations.CourseCode;
import org.springframework.stereotype.Component;

import javax.validation.constraints.*;

@Component
public class Customer {

    private String name;

    @NotNull(message = "this field has to be filled")
    @Size(min = 3, message = "min. 3 characters needed")
    private String lastName;

    @NotNull(message = "this field has to be filled")
    @Min(value = 18, message = "minimum age is 18 y.o.")
    @Max(value = 69, message = "maximum age is 69 y.o.")
    private Integer age;

    @Pattern(regexp = "^[a-zA-Z0-9]{5}", message = "only 5 chars/digits")
    private String postalCode;

    @NotNull(message = "must not empty")
    @CourseCode
    private String courseCode;


    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
