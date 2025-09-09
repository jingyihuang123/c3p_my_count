Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Counter',
	#package : 'Counter'
}

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [
self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : 'tests' }
CounterTest >> testCounterWellInitialized [
self
assert: (Counter new increment; increment; count)
equals: 2
]

{ #category : 'tests' }
CounterTest >> testIncrement [

	| c count |
	c := Counter new.
	c increment.
	c increment.
	c increment.
	self assert: c count equals: 3
]

{ #category : 'tests' }
CounterTest >> testInitialized [


	| c |
	c := Counter new.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testPrinton [
|c s|
c := Counter new.
c count: 15.
s := c printString .
self assert: (s includesSubstring: 'zith value: 15' ).
]
