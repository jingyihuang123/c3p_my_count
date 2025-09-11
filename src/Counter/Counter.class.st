Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#category : 'Counter',
	#package : 'Counter'
}

{ #category : 'accessing' }
Counter class >> startingAt: anInteger [
^ self new count: anInteger
]

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'API' }
Counter >> decrement [
  
  count := count + 1
]

{ #category : 'API' }
Counter >> decrementBy2 [

	count := count - 2
]

{ #category : 'accessing' }
Counter >> hello [ 
	^'helo'
]

{ #category : 'accessing' }
Counter >> increment [

	count := count + 1
]

{ #category : 'accessing' }
Counter >> initialize [ 

	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' WITH value :' , count printString.
]

{ #category : 'initialization' }
Counter >> set: anumber [
count := anumber .
]
