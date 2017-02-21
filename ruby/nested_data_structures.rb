shelter={
	dogs: {
		kennel_1:{
		name: 'Ruffus',
		color: 'black and white',
		gender: 'male',
		age: 2,
		habilities: [
			'Sitting',
			'Gives paw',
			'Play dead'],
		months_in_shelter: 3		
		},		
		
		kennel_2:{
			name: 'Shereen',
			color: 'brown',
			gender: 'female',
			age: 0,
			habilities:[],
			months_in_shelter: 1,
		},

		kennel_4: {},
		kennel_5:{}
	},
	cats:{
		kennel_6:{
			name: 'Mr. Boots',
			color: 'calico',
			gender: 'female',
			age: 4,
			habilities: [
				'Uses litter box',
				'able to go outside'],
			months_in_shelter: 26,
		},

		kennel_7:{
			name: 'Cookie',
			color: 'black and white',
			gender: 'female',
			age: 1,
			habilities: [
				'Uses litter box',
				'use a leash'],
			months_in_shelter: 26
		},

		kennel_8:{},
		kennel_9:{},
		kennel_10:{}
	}
}

#print name of cat in kennel 7
p shelter [:cats][:kennel_7][:name]
#print information for all dogs
p shelter[:dogs]
#add an hability to Shereen the dog
shelter[:dogs][:kennel_2][:habilities].push("Being too cute")
#print the habilities of shereen the dog
p shelter[:dogs][:kennel_2][:habilities][0]
#create a name for dog in kennel 4
shelter[:dogs][:kennel_4][:name]="Angus"
#print name of dog in kennel 4
p shelter[:dogs][:kennel_4][:name]
