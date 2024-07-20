# Armor Vest Script for ESX

This script allows players to use different types of armor vests in an ESX framework-based FiveM server. The vests provide armor and can be added, customized, and managed through a configuration file.

**Important Note:** This is the original script and has been taken from [this source](https://qs-scripts-store.tebex.io/package/6354948). The script was copied and sold without permission by the store linked above. Unauthorized redistribution or modification of this script is prohibited.

## Installation

1. **Download the Script:**
   Download the script files and place them in a new folder within your FiveM resources directory.

2. **Add to Server Configuration:**
   Add the following line to your `server.cfg` to ensure the script is loaded:
   ```plaintext
   ensure your_script_folder_name
   ```

2. **Configuration:**
   Edit the config.lua file to add or customize vests as per your requirements.

## Example Configuration (config.lua)

```lua
Config = {}

Config.Anim = 'try_tie_positive_a'  -- Animation to play when putting on the vest

Config.Vests = {
    {
        itemName = 'pd_vest',       -- Item name to be used in the inventory
        armourValue = 100,          -- Amount of armour the vest provides
        bproof_1 = 50,              -- Appearance parameter 1 for the vest
        bproof_2 = 0                -- Appearance parameter 2 for the vest
    },
    {
        itemName = 'kevlar_vest',
        armourValue = 100,
        bproof_1 = 4,
        bproof_2 = 0
    }
}

Config.RemoveItemThreshold = 75 -- Percentage threshold of armour remaining to remove the item from inventory

-- ESX Export
Config.ESXExport = function()
    ESX = exports["es_extended"]:getSharedObject()
end
```

## Adding a New Vest
To add a new vest to the script, follow these steps:

1. Open config.lua:
   Open the config.lua file in a text editor.

2. Add a New Vest Entry:
   Add a new table entry within the Config.Vests table with the desired parameters. For example:
   ```lua
   {
    itemName = 'new_vest',       -- Unique item name
    armourValue = 80,            -- Amount of armour provided
    bproof_1 = 10,               -- Appearance parameter 1
    bproof_2 = 5                 -- Appearance parameter 2
   }
    ```

## Example
Here is a complete example of adding a new vest:

```lua
Config.Vests = {
    {
        itemName = 'pd_vest',
        armourValue = 100,
        bproof_1 = 50,
        bproof_2 = 0
    },
    {
        itemName = 'kevlar_vest',
        armourValue = 100,
        bproof_1 = 4,
        bproof_2 = 0
    },
    {
        itemName = 'new_vest',
        armourValue = 80,
        bproof_1 = 10,
        bproof_2 = 5
    }
}
```

## Usage
1. Give Item to Player:
   Use the ESX command to give the vest item to a player. For example:
   ```plaintext
   /giveitem [playerID] new_vest 1
   ```
2. Using the Vest:
  The player can use the vest item from their inventory. Upon use, the vest will apply the configured armor and appearance changes.

# Important Notes
- **Item Integration:** Ensure that the vest items (e.g., pd_vest, kevlar_vest, etc.) are either added to your database or are configured in the respective inventory system used by your server.
- **Restrictions on Redistribution:** Redistribution or modification of this script is not allowed. This includes, but is not limited to, distributing modified versions of the script or including it in other scripts without permission.

## License
This script is provided under the MIT License. Unauthorized redistribution or modification is prohibited.

This updated README includes:
- **Important Notes** about integrating the item into the database or inventory.
- **Restrictions on Redistribution** to clarify that modifications and distribution are not permitted.
