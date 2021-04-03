<cfscript>

    /**
    * Returns the styles to be placed in HTML head
    */
    function livewireStyles() {
        return getInstance( "cblivewire.models.Livewire" ).getStyles();
    }

    /**
    * Returns the JS to be placed in HTML body
    */
    function livewireScripts() {
        return getInstance( "cblivewire.models.Livewire" ).getScripts();
    }

    /**
    * Renders a livewire component
    */
    function livewire( componentName ) {
        return getInstance( "cblivewire.models.Livewire" ).render( componentName );
    }


</cfscript>