on run {}
	delay 7.0
	
	set likeCount to 30
	
	my doPrepareTabs()
	my doLikePosts(likeCount)
end run

on doPrepareTabs()
	try
		my doTab()
		my doReturn()
	on error errorMessage
		
	end try
end doPrepareTabs


on doLikePosts(likeCount)
	set clickLikeScript to "click UI Element \"Like\" of group 1 of group 1 of group 1 of group 1 of UI Element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window 1 of application process \"Safari\""
	set rightArrowScript to "keystroke \"\""
	
	try
		repeat likeCount times
			try
				run script "tell application \"System Events\"
					" & clickLikeScript & "
					end tell"
				
				delay 0.332081
				
				run script "tell application \"System Events\"
					" & rightArrowScript & "
					end tell"
				
				delay 1.0
				
			on error errorMessage
				
			end try
		end repeat
		
	on error errorMessage
		
	end try
	
	my doCloseTab()
end doLikePosts

on doCloseTab()
	set closeTabScript to "keystroke \"w\" using command down"
	try
		run script "tell application \"System Events\"
			" & closeTabScript & "
			end tell"
		
		delay 0.332081
		
	on error errorMessage
		
	end try
end doCloseTab

-- Tab to most recent picture

on doTab()
	set tabScript to "keystroke \"	\" using option down"
	--	set endDate to (current date) + timeoutSeconds	
	repeat 13 times -- Tab to most recent picture
		try
			run script "tell application \"System Events\"
			" & tabScript & "
			end tell"
			delay 0.35
			
		on error errorMessage
			
		end try
	end repeat
end doTab

-- Press Return to open the picture

on doReturn()
	set returnScript to "keystroke \"
	\""
	try
		run script "tell application \"System Events\"
			" & returnScript & "
			end tell"
	end try
end doReturn
