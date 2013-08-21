#
#  AppDelegate.rb
#  StopWatch
#
#  Created by Alexander Bakus on 2013-08-20.
#  Copyright 2013 Alexander Bakus. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :textField # This creates an outlet named textField
    attr_accessor :pushButtonStart # This creates an outlet named pushButtonStart
    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
    end
    
    def startTimer(sender)
        # This method is called when the start button is clicked.
        if textField.stringValue.nil? && pushButtonStart.title == "start"
            @time = 0.0
            timerStart(@time)
            pushButtonStart.title = "pause"
            elsif pushButtonStart.title == "pause"
            @timer.invalidate
            @timer = nil
            pushButtonStart.title = "start"
            else
            @time = textField.stringValue.to_f
            timerStart(@time)
            pushButtonStart.title = "pause"
        end
    end
    
    def stopTimer(sender)
        # This method is called when the stop button is clicked.
        if @timer
            @timer.invalidate
            @timer = nil
        end
        pushButtonStart.title = "start"
        textField.stringValue = ""

    end
    
    def timerStart(time)
        if @timer.nil?
            @time = time
            @timer = NSTimer
            .scheduledTimerWithTimeInterval(0.1, target: self, selector: "timerHandler:", userInfo: nil, repeats: true)
        end
    end
    
    def timerHandler(userInfo)
        @time += 0.1
        string = sprintf("%.1f", @time)
        textField.setStringValue(string)
    end
end

