module.exports = async function (context, req) {
    try {
        // Read incoming data
        const name = (req.query.name || (req.body && req.body.name));

        // fail if incoming data is required
        if (!name) {

            context.res = {
                status: 400
            };
            return;
        }

        // Construct response
        const responseJSON = {
            "name": name
        }

        context.res = {
            // status: 200, /* Defaults to 200 */
            body: responseJSON,
            // contentType: 'application/json'
            headers: {
                'Content-Type': 'application/json'
            }
        };
    } catch (err) {
        context.res = {
            status: 500
        };
    }
}