component extends="cblivewire.handlers.Component" accessors="true" {

    property name="message" default="This is lazy. Type, then click off me.";

    function render() {
        return renderView( "cblivewire/modelBindingLazy" );
    }
}