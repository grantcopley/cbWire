component extends="cblivewire.handlers.Component" accessors="true" {

    property name="message" default="This debounces for 1 second.";

    function render() {
        return renderView( "cblivewire/modelBindingDebounce" );
    }
}