accessing
children
	
	^ from dependencies select: [ :each | each target = to ]