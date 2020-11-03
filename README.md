# DateExtensions

Συναρτήσεις που έφτιαξα για να με διευκολύνουν για την διαχείριση των ημερομηνιών.
Είναι όλες ως extension στο Date, και έτσι είναι πολύ εύκολο κάθε ημερομηνία  να την τροποποιήσουμε στο σημείο που θέλουμε. 

Μερικά παραδείγματα:

``` swift
// Επιστέφει την ημερομηνία όσο πιο αναλυτικά μπορεί σε String "Tuesday, 3 November 2020 at 9:00 PM"
Date().longDateAndTimeToString()

// Επιστρέφει την ημερομηνία συνοπτικά "11/03/20, 9:00 PM"
Text(Date().shortDateAndTimeToString())

// Επιστρέφει μόνο την ημερομηνία "11/3/20"
Text(Date().dateToString())

// Επιστρέφει μόνο την ώρα "10:00 PM"
Text(Date().timeToString())

// Επιστρέφει το στοιχεία της ημερομηνίας που θέλουμε, για παράδειγμα την ημέρα "Tuesday"
Text(Date().dateComponentToString(component: .weekday))
```

> Να έχεις υπόψην σου ότι στις περισσότερες συναρτήσεις μπορείς να προσθέσεις λεπτά ή ημέρες (Ανάλογα τι είναι πιο λογικό για την συνάρτηση.)
