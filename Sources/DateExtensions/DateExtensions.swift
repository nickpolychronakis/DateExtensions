import Foundation

extension Date {
    // MARK: - Format Date
    /// Μετατρέπει την ημερομήνία και την ώρα σε String σε πλήρη μορφή ( αν θέλουμε μπορούμε να προσθέσουμε επιπλέον λεπτά)
    public func longDateAndTimeToString(_ addedMinutes: Double = 0.0) -> String {
        let date = Date(timeInterval: addedMinutes * 60, since: self)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        
        var tempDateAndTime = ""
        // Αν η γλώσσα της εφαρμογής είναι Ελληνικά
        if Locale.preferredLanguages[0] == "el" {
            // κανονικά γίνεται με το .short, αλλά στα ελληνικά αντί να γράψει "στις" (όπως στα αγγλικά βάζει "at", βάζει παύλα, επομένως έπρεπε να το αλλάξω μόνος μου
            dateFormatter.timeStyle = .none // .short
            tempDateAndTime = "\(dateFormatter.string(from: date)) και ώρα \(date.timeToString())"
        // Αν είναι οποιαδήποτε άλλη γλώσσα
        } else {
            dateFormatter.timeStyle = .short
            tempDateAndTime = "\(dateFormatter.string(from: date))"
        }
        return tempDateAndTime
    }
    
    /// Μετατρέπει την ημερομήνία και την ώρα σε String ( αν θέλουμε μπορούμε να προσθέσουμε επιπλέον λεπτά)
    public func shortDateAndTimeToString(_ addedMinutes: Double = 0.0) -> String {
        let date = Date(timeInterval: addedMinutes * 60, since: self)
        
        var tempDateAndTime = ""
        // Αν η γλώσσα της εφαρμογής είναι Ελληνικά
        if Locale.preferredLanguages[0] == "el" {
            tempDateAndTime = "\(date.dateToString()) και ώρα \(date.timeToString())"
        // Αν είναι οποιαδήποτε άλλη γλώσσα θα μπαίνει μπαίνει "," μεταξύ της ημερομηνίας και της ώρας
        } else {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short
            tempDateAndTime = dateFormatter.string(from: date)
        }
        return tempDateAndTime
    }
    
    /// Μετατρέπει μόνο την ημερομήνία σε String ( αν θέλουμε μπορούμε να προσθέσουμε επιπλέον ημέρες)
    public func dateToString(_ addedDays: Double = 0.0) -> String {
        let date = Date(timeInterval: addedDays * 60 * 60 * 24, since: self)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: date)
    }
    
    /// Επιστρέφει μόνο την ώρα ( αν θέλουμε μπορούμε να προσθέσουμε επιπλέον λεπτά)
    public func timeToString(_ addedMinutes: Double = 0.0) -> String {
        let date = Date(timeInterval: addedMinutes * 60, since: self)
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }
    
    /// Επιστρέφει το στοιχείο που επιθυμούμε απο μία ημερομηνία σε String
    public func dateComponentToString(component: Calendar.Component) -> String {
        let dateComponent = Calendar.current.component(component, from: self)
        
        switch component {
        case .month:
            return DateFormatter().monthSymbols[dateComponent - 1]
        case .weekday:
            return DateFormatter().weekdaySymbols[dateComponent - 1]
        default:
            return String(dateComponent)
        }
    }
}
