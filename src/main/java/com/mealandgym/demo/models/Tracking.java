package com.mealandgym.demo.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Tracking")
public class Tracking {
    @Id
    private int id;
    @NotNull
    @NotBlank(message = "Name can not be null")
    private String name;
    private int week;
    private int numberOfSets;
    private int numberOfReps;
    private int set1Weight;
    private int set1Rep;
    private int set2Weight;
    private int set2Rep;
    private int set3Weight;
    private int set3Rep;
    private int set4Weight;
    private int set4Rep;
    public Tracking() {}

    public Tracking(String name, int week, int numberOfSets, int numberOfReps, int set1Weight, int set1Rep, int set2Weight, int set2Rep, int set3Weight, int set3Rep, int set4Weight, int set4Rep) {
        this.name = name;
        this.week = week;
        this.numberOfSets = numberOfSets;
        this.numberOfReps = numberOfReps;
        this.set1Weight = set1Weight;
        this.set1Rep = set1Rep;
        this.set2Weight = set2Weight;
        this.set2Rep = set2Rep;
        this.set3Weight = set3Weight;
        this.set3Rep = set3Rep;
        this.set4Weight = set4Weight;
        this.set4Rep = set4Rep;
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

    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public int getNumberOfSets() {
        return numberOfSets;
    }

    public void setNumberOfSets(int numberOfSets) {
        this.numberOfSets = numberOfSets;
    }

    public int getNumberOfReps() {
        return numberOfReps;
    }

    public void setNumberOfReps(int numberOfReps) {
        this.numberOfReps = numberOfReps;
    }

    public int getSet1Weight() {
        return set1Weight;
    }

    public void setSet1Weight(int set1Weight) {
        this.set1Weight = set1Weight;
    }

    public int getSet1Rep() {
        return set1Rep;
    }

    public void setSet1Rep(int set1Rep) {
        this.set1Rep = set1Rep;
    }

    public int getSet2Weight() {
        return set2Weight;
    }

    public void setSet2Weight(int set2Weight) {
        this.set2Weight = set2Weight;
    }

    public int getSet2Rep() {
        return set2Rep;
    }

    public void setSet2Rep(int set2Rep) {
        this.set2Rep = set2Rep;
    }

    public int getSet3Weight() {
        return set3Weight;
    }

    public void setSet3Weight(int set3Weight) {
        this.set3Weight = set3Weight;
    }

    public int getSet3Rep() {
        return set3Rep;
    }

    public void setSet3Rep(int set3Rep) {
        this.set3Rep = set3Rep;
    }

    public int getSet4Weight() {
        return set4Weight;
    }

    public void setSet4Weight(int set4Weight) {
        this.set4Weight = set4Weight;
    }

    public int getSet4Rep() {
        return set4Rep;
    }

    public void setSet4Rep(int set4Rep) {
        this.set4Rep = set4Rep;
    }
}
