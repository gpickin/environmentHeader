/**
 * I am a ColdBox module that adds a http header to the response to show the ColdBox Environment the app is running in.
 */
component {

	this.name = "environmentHeader";
    this.author = "Gavin Pickin";
    this.webUrl = "https://github.com/gpickin/environmentHeader";

    function configure() {
    }

    /**
     * This function is the core of the Environment header module. 
	 * This fires on onRequestCapture and adds the ColdBox Environment of the app to the event headers with the key X-ColdBox-Env
     * @event
     * @interceptData
     * @buffer
     * @rc
     * @prc
     */
    function onRequestCapture( event, interceptData, buffer, rc, prc ) {
        event.setHTTPHeader( name = "x-coldbox-env", value = event.getController().getSetting( "environment" ) );
	}
}