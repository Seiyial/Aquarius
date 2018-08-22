import ReactDOM from 'react-dom'
import React from 'react'
import './style.scss'

class App extends React.Component {
	constructor() {
		super()
		this.state = {
			inputVal: ''
		}
	}

	render() {
		return(
			<div className='container'>
				<h1 className='container--app-title'>ACRA Lookup tool</h1>
				<small>Powered by syxworks</small>

				<div className='container--padding' />

				<div className='container--form'>
					<input className='input' placeholder='Company/Entity Name' value={this.state.inputVal} onChange={(e) => this.setState({ inputVal: e.target.value })}/>
				</div>
			</div>
		)
	}
}

ReactDOM.render(<App />, document.getElementById('app_root'))