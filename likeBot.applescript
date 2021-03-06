on run {}
	delay 7.332081
	
	set hashtagCount to 3
	
	set likeCount to 3
	
	set tabsToMostRecent to 13
	set timeoutSeconds to 20.0
	
	-- set b to tabsToMostRecent as string

	-- set a to time & b

	set output to "Coffeisseur Like Bot:
	"

	-- set output to input
	
	set output to output & doPrepareTabs(hashtagCount, tabsToMostRecent, timeoutSeconds)
	set output to output & doLikePosts(hashtagCount, likeCount)
	
	return output
end run


on doPrepareTabs(hashtagCount, tabsToMostRecent, timeoutSeconds)
	set tabScript to "keystroke \"	\" using option down"
	set returnScript to "keystroke \"
\" "
	set tabSwitchScript to "keystroke \"	\" using control down"
	
	repeat hashtagCount times -- Once per hashtag tab
		try
			-- my doTabWithTimeout(tabScript, tabsToMostRecent, timeoutSeconds)
			-- my doReturnWithTimeout(returnScript, timeoutSeconds)
			-- my doTabSwitchWithTimeout(tabSwitchScript, timeoutSeconds)
			delay 1.332081
		on error errorMessage
			
		end try
	end repeat
	return "Tabs prepared
	"

	-- return output
end doPrepareTabs


on doLikePosts(hashtagCount, likeCount, output)
	set clickLikeScript to "click UI Element \"Like\" of group 1 of group 1 of group 1 of group 1 of UI Element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1 of application process \"Safari\""
	set rightArrowScript to "keystroke \"\""
	set closeTabScript to "keystroke \"w\" using command down"
	
	repeat hashtagCount times
		try
			set endDate to (current date) + 15
			repeat likeCount times
				try
					run script "tell application \"System Events\"
					" & clickLikeScript & "
					end tell"
					
					delay 1.332081
					
					run script "tell application \"System Events\"
					" & rightArrowScript & "
					end tell"
					
					delay 1.332081
					
				on error errorMessage
					-- output = output + errorMessage
					set output to output & "Tabs error
	"
					--		if ((current date) > endDate) then
					--			run script "tell application \"System Events\"
					--		" & closeTabScript & "
					--		end tell"
					
					--					delay 1.332081
					--				end if
				end try
			end repeat
			
		on error errorMessage
			
		end try
		
		try
			run script "tell application \"System Events\"
			" & closeTabScript & "
			end tell"
			
			delay 0.332081
			
		on error errorMessage
			
		end try
	end repeat
	-- output = output + " Success"
	set output to output & "Tabs success
	"
end doLikePosts

-- Tab to most recent picture

on doTabWithTimeout(tabScript, tabsToMostRecent, timeoutSeconds)
	--	set endDate to (current date) + timeoutSeconds	
	repeat tabsToMostRecent times -- Tab to most recent picture
		try
			run script "tell application \"System Events\"
" & tabScript & "
end tell"
			delay 1.332081
			
		on error errorMessage
			
		end try
	end repeat
end doTabWithTimeout

-- Press Return to open the picture

on doReturnWithTimeout(returnScript, timeoutSeconds)
	set endDate to (current date) + timeoutSeconds
	repeat
		try
			run script "tell application \"System Events\"
" & returnScript & "
end tell"
			exit repeat
		on error errorMessage
			
		end try
	end repeat
end doReturnWithTimeout


-- Press control + tab to switch browser tabs

on doTabSwitchWithTimeout(tabSwitchScript, timeoutSeconds)
	set endDate to (current date) + timeoutSeconds
	repeat
		try
			run script "tell application \"System Events\"
" & tabSwitchScript & "
end tell"
			exit repeat
		on error errorMessage
			
		end try
	end repeat
end doTabSwitchWithTimeout