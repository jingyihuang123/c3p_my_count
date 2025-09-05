Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Counter',
	#package : 'Counter'
}

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
