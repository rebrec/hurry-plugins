import Plugin from '../../src/core/Plugin'
import datasourceDefinition from './datasource.definition'


export default class DodoPlugin extends Plugin{
    constructor(api, context){
        super(api, context);
        api.store.datasourceManager.addDatasourceDefinition(datasourceDefinition, context.pluginDir);
    }

    
} 