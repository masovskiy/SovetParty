// This template was made by FusionTerror.
const DiscordRPC = require('discord-rpc'); // Requiring the discord-rpc package.
const client = new DiscordRPC.Client({ transport: 'ipc' }); // Creating a client variable with is our rpc client.
require('dotenv').config(); // Requiring the content of our .env file.

(async () => {
    client.on('ready', async () => { // Calling the ready event.
        await client.setActivity({ // Setting the Rich Presence Activity based on what is passed in here.
            buttons: [{ label: "GLORY TO SOVIET UNION!", url: "https://youtu.be/WOUWGHDEqHI" }],
            details: "WE DONT GIVE UP, WE RISE FROM THE RED FLESH! WE ARE COMMUNISTS!",
            largeImageKey: "rpc_icon",
            largeImageText: "WE ARE POWER!",
            partyId: 'sovietid1945',
            partySize: 1,
            partyMax: 10,
            instance: false,
        }).catch(err => console.log(err));

        console.log("Done");
    });

    await client.login({ clientId : "Your Client ID" }).catch(console.error); // Logging into our application.
})();
