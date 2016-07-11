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
    elements: [
      { data: id: 'a' }
      { data: id: 'b' }
      { data: id: 'c' }
      { data: id: 'd' }
      { data: id: 'e' }
      { data:
        id: 'ab'
        source: 'a'
        target: 'b' }
      { data:
        id: 'cd'
        source: 'c'
        target: 'd' }
      { data:
        id: 'ed'
        source: 'e'
        target: 'd' }
      ]
    layout:
      name: 'cose')
