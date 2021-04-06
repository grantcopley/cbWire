component extends="cblivewire.handlers.Component" accessors="true" {

    property name="message" default="Form not saved yet.";

    function save() {
        this.setMessage("The form saved!" );
    }

    function render() {
        return renderView( "cblivewire/formSubmit" );
    }
}