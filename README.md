# 🐚 Close Symptom Events – Shell Scripting Final Project

![Shell Script](https://img.shields.io/badge/Shell-Bash-blue) ![Status](https://img.shields.io/badge/Status-Completed-green)

---

## 🚀 Project Overview
In modern IT environments, **monitoring tools generate events** from multiple sources such as servers, applications, or network devices. Each event usually opens an **incident** to track the issue.  

However, incidents may get resolved while the corresponding events remain **open**, causing clutter in monitoring dashboards and false alerts.  

This project automates **closing events based on incident status**, ensuring monitoring systems stay accurate and efficient.

---

## 💡 Problem Statement
- Events remain open even after incidents are resolved.
- Manual checking is **time-consuming and error-prone**.
- Organizations need **automation** to maintain monitoring system integrity.

---

## 🛠 Solution
This Bash script:
1. Reads incident numbers and statuses from `ticket_status`.
2. Maps events to incidents using `events_tickets.txt`.
3. Prompts the user for an **incident number**.
4. Checks the incident status:
   - If **closed**, marks the corresponding event as **closed** in `events_status.txt`.
   - If **open**, leaves the event unchanged.
5. Prints the event and its status to the user.

✅ Ensures that **closed incidents automatically update their events**, improving monitoring accuracy.

---

