Class {
	#name : #RMSTokenNotMatching,
	#superclass : #Error,
	#instVars : [
		'token'
	],
	#category : #'ReMobidyc-Server-Core-ReMobidyc-Server-Core'
}

{ #category : #signalling }
RMSTokenNotMatching class >> signalWithToken: aToken [

	(self new initializeToken: aToken) signal: 'The token does not match. Your token :', aToken asString. 
]

{ #category : #initialization }
RMSTokenNotMatching >> initializeToken: aToken [
	token:= aToken. 
	^ self.
]

{ #category : #initialization }
RMSTokenNotMatching >> token [ 
	^ token. 
]