Meteor.startup ->

  Meteor.cytoscape = require 'cytoscape'

  { div, h1, p, a } = React.DOM
  
  `import Foundation from 'react-foundation'`
  @Badge = React.createFactory Foundation.Badge
  @Button = React.createFactory Foundation.Button
  @Label = React.createFactory Foundation.Label
  @TopBar = React.createFactory Foundation.TopBar

  Meteor.Dropzone = require 'react-dropzone'
  @Dropzone = React.createFactory Meteor.Dropzone
  @dropzone_style = {
    width: 200
    height: 200
    borderWidth: 2
    borderColor: '#666'
    color: 'white'
    borderStyle: 'dashed'
    borderRadius: 5
    }
  @dropzone_activeStyle = {
    borderStyle: 'solid'
    backgroundColor: '#eee'
    }
  @dropzone_rejectStyle = {
    borderStyle: 'solid'
    backgroundColor: '#ffdddd'
    }

  @App = Component.create
    getInitialState: ->
      color: 'red'
  
    getDefaultProps: ->
      back_color: '#d3d3d3'
  
    onDrop_edges: (edge_file) ->
      console.log 'Received Edge file: ', edge_file
      return true
  
    onDrop_nodes: (edge_file) ->
      console.log 'Received Node file: ', edge_file
      return true

    onClickEvent: () ->
        @setState color: 'blue'

    onClickEvent1: () ->
        @setState color: 'green'
  
    componentDidMount: () ->
      Meteor.cyMount()
      Meteor.cy.on 'tap', (evt) =>
        @onClickEvent1()
        return

    render: ->
        div {},
          TopBar {style:{'backgroundColor':@props.back_color,'color':@state.color}},'Cytoscape.js web application'


          div {className:'expanded row',style:{'minHeight':'100vh'}},
            div {className:'large-2 columns',style:{'minHeight':'100vh','backgroundColor':'#252525'}},
              Button {onClick:() => @onClickEvent()},'change topbar text color'
              Dropzone {multiple:false, style:dropzone_style, onDrop:() => @onDrop_edges()},
                div {}, 'Drop edge file here (comma-separated table, .csv or .txt)'
              Dropzone {multiple:false, style:dropzone_style, onDrop:() => @onDrop_nodes()},
                div {}, 'Drop node file here (comma-separated table, .csv or .txt)'
            div {className:'large-10 columns',style:{'minHeight':'100vh'}},
              div {id:'cy',style:{'minHeight':'92vh'}}
          
          #Badge {color:'info'},'badge'
          #Label {color:'success'},'label'


  ReactDOM.render(
    App({}),
    document.getElementById 'app'
  )
  

