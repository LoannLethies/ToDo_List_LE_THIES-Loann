# SWIFT Mobile Programming Lab Report

## Introduction
The aim of these labs is to implement an iOS mobile application for managing a Todo List with its associated functionalities using Swift.

## My Implementation

### Data Model Design
Tasks will be objects of a class named "Todo". A task will have 4 attributes:
- A name which is of type string
- A description which is of type string
- A check which is a boolean indicating whether a task has been completed or not
- A due date

### Storyboard Creation and Application Programming
Our application will consist of 3 views and a viewController to facilitate the management of these 3 views.
1. The first view will be used for displaying tasks using a TableView. It will display the name of the task, a checkmark indicating whether a task has been completed or not, the ability to add a task (using the '+' button), and the ability to delete a task (by swiping left). It will also contain a search bar for searching for a specific task by its name.
2. The second view will display the details of the selected task (by clicking on a task in the first view). It will display a button to return to the first view, the name and description of the task, its due date, and a slider to modify the state of the task (completed or not).
3. The third and final view will be used for adding a task. This view is accessible by clicking the '+' button in the first view and a button will allow us to return to the first view. When adding a task, we can choose the name we want to give it, a description, and a due date that can be selected using a calendar. To confirm the creation of a task, we must click the "Done" button at the top right of the view.

### Addition of Completion Date
Each task has a due date. This aspect allows automatic sorting of tasks in the tableView of the first view. Tasks will be displayed directly from the most urgent (the smallest date) to the least urgent (the largest date).

### Addition of Categories
This part is not implemented due to lack of time.

### Addition of a Search Engine
In the first view, a search engine is available to search for a task by its name. It is based on the use of an intermediate array that retrieves and displays tasks containing the characters searched for in our initial array of tasks.

## Challenges Faced
It is hard to work on the labs at home because I don't have a MAC which makes progress and understanding of the topic more difficult but still doable.
