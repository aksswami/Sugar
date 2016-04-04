import Foundation

public extension NSTimeInterval {
    var second: NSTimeInterval {
        return self.seconds
    }
    
    var seconds: NSTimeInterval {
        return self
    }
    
    var minute: NSTimeInterval {
        return self.minutes
    }
    
    var hour: NSTimeInterval {
        return self.hours
    }
    
    var day: NSTimeInterval {
        return self.days
    }
    
    var minutes: NSTimeInterval {
        let secondsInAMinute = 60 as NSTimeInterval
        return floor(self / secondsInAMinute)
    }
    
    var hours: NSTimeInterval {
        let secondsInAHour = 3600 as NSTimeInterval
        return floor(self / secondsInAHour)
    }
    
    var days: NSTimeInterval {
        let secondsInADay = 86_400 as NSTimeInterval
        return floor(self / secondsInADay)
    }
    
    var fromNow: NSDate {
        let timeInterval = self
        return NSDate().dateByAddingTimeInterval(timeInterval)
    }
    
    func from(date: NSDate) -> NSDate {
        let timeInterval = self
        return date.dateByAddingTimeInterval(timeInterval)
    }
    
    var ago: NSDate {
        let timeInterval = self
        return NSDate().dateByAddingTimeInterval(-timeInterval)
    }
    
    var displayInterval: String {
        let timeInterval = self
        if timeInterval.day > 1 {
            return "\(Int(timeInterval.day)) d"
        }
        else if timeInterval.hour > 1 {
            return "\(Int(timeInterval.hour)) h"
        }
        else {
            return "\(Int(timeInterval.minute)) min"
        }
    }
}