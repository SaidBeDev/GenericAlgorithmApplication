# 🧬 Genetic Algorithm - One Point Crossover (TSP Solver)

This project implements a **Genetic Algorithm (GA)** with a **One Point Crossover** operator to solve optimization problems, particularly the **Travelling Salesman Problem (TSP)**.

The work is part of a **Metaheuristics TP (Practical Work)** and demonstrates how genetic operators can be applied to find near-optimal solutions when exact methods are too complex or time-consuming.

---

## 📖 Overview

Genetic Algorithms (GA) are inspired by the principles of **natural selection** and **evolution**.  
They use populations of candidate solutions and evolve them through **selection**, **crossover**, and **mutation**.

In this project:
- **One Point Crossover** is used to recombine parents into new solutions.
- The **Travelling Salesman Problem (TSP)** is chosen as the case study.
- Several scripts implement the GA pipeline, from population generation to fitness evaluation.

---

## 🧩 Features

- ✅ Implementation of **Genetic Algorithm (GA)** from scratch  
- ✅ **One Point Crossover** operator for genetic recombination  
- ✅ Fitness evaluation to guide solution quality  
- ✅ Generation of feasible solutions for **TSP**  
- ✅ Modular structure with separate scripts for each GA operator  

---

## ⚙️ How It Works

1. **Population Initialization**  
   Generate a random set of candidate TSP routes.

2. **Fitness Evaluation**  
   Compute the quality (objective value) of each solution.

3. **Crossover (One Point)**  
   Combine genetic information from two parents to create offspring.

4. **Mutation & Selection**  
   Introduce variations and evolve towards better solutions.

5. **Iteration**  
   Repeat until convergence or a maximum number of iterations is reached.

---

## 📂 Project Structure

- `main.m` → Main program (initialization + execution flow)  
- `population_generate.m` → Generates initial population  
- `crossover.m` → Implements One Point Crossover operator  
- `fitness.m` → Evaluates objective function values  
- `generate_solution.m` → Builds feasible TSP solutions  

---

## 🚀 Example

The algorithm evolves the population and outputs an optimized TSP route with reduced travel distance.

Example execution shows improvement of solutions over iterations.

---

## 📚 References

- [Genetic Algorithm - Wikipedia](https://en.wikipedia.org/wiki/Genetic_algorithm)  
- [Evolutionary Computation](https://en.wikipedia.org/wiki/Evolutionary_computation)  
- [One Point Crossover](https://en.wikipedia.org/wiki/Genetic_algorithm#Crossover)  

---

## 👨‍💻 Author

- [Said BELAID](https://www.linkedin.com/in/said-be/)

Université M’hamed Bougarra – Boumerdes  
Département de Mathématique | Faculté des sciences  

---
