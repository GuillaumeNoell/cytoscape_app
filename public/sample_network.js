var Meteor.cy_nodes = [
    { data: { id: 'j', name: 'Jerry' } },
    { data: { id: 'e', name: 'Elaine' } },
    { data: { id: 'k', name: 'Kramer' } },
    { data: { id: 'g', name: 'George' } }]

var Meteor.cy_edges = [
    { data: { source: 'j', target: 'e' } },
    { data: { source: 'j', target: 'k' } },
    { data: { source: 'j', target: 'g' } },
    { data: { source: 'e', target: 'j' } },
    { data: { source: 'e', target: 'k' } },
    { data: { source: 'k', target: 'j' } },
    { data: { source: 'k', target: 'e' } },
    { data: { source: 'k', target: 'g' } },
    { data: { source: 'g', target: 'j' } }
]

var Meteor.exampleNetwork = {
    nodes: [
        { data: { id: 'a', foo: 3, bar: 5, baz: 7 } },
        { data: { id: 'b', foo: 7, bar: 1, baz: 3 } },
        { data: { id: 'c', foo: 2, bar: 7, baz: 6 } },
        { data: { id: 'd', foo: 9, bar: 5, baz: 2 } },
        { data: { id: 'e', foo: 2, bar: 4, baz: 5 } }
    ], 

    edges: [
        { data: { id: 'ae',  source: 'a', target: 'e' } },
        { data: { id: 'ab',  source: 'a', target: 'b' } },
        { data: { id: 'be',  source: 'b', target: 'e' } },
        { data: { id: 'bc',  source: 'b', target: 'c' } },
        { data: { id: 'ce',  source: 'c', target: 'e' } },
        { data: { id: 'cd',  source: 'c', target: 'd' } },
        { data: { id: 'de',  source: 'd', target: 'e' } }
    ]
};
