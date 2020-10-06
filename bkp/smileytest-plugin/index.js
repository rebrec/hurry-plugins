import Plugin from '../../src/core/Plugin'
import Test from './Test.jsx'


export default class TestPlugin extends Plugin{
    constructor(api, context ){
        super(api, context); 
        api.store.uiState.addView('Test', Test(api)); 
    }
} 