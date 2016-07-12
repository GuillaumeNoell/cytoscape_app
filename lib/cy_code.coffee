
Meteor.cy_nodes = [
    { data: { id: 'i', name: 'iname' } }
    { data: { id: 'j', name: 'Jerry' } }
    { data: { id: 'g', name: 'George' } }
]

Meteor.cy_edges = [
    { data: { id: 'ji', source: 'j', target: 'i' } }
    { data: { id: 'gj', source: 'g', target: 'j' } }
]
  
Meteor.cyMount = () ->
  Meteor.cy = Meteor.cytoscape(
    container: document.getElementById('cy')
    style: [
      {
      selector: 'node'
      style:
        'background-color': '#666'
        'label': 'data(id)'
        }
      {
        selector: 'edge'
        style:
          'width': 3
          'line-color': '#ccc'
          'target-arrow-color': '#ccc'
          'target-arrow-shape': 'triangle'
      }
      ]
    elements:
      nodes: Meteor.cy_nodes
      edges: Meteor.cy_edges
    layout:
      name: 'cose')
