module overmind::breeder_events {
    use std::string::String;

    struct CreateMonsterCollectionEvent has store, drop {
        name: String,
        description: String,
        uri: String,
        breeding_time: u64,
        starting_properties: vector<vector<u8>>,
        timestamp: u64
    }

    struct CreateEquipmentCollectionEvent has store, drop {
        name: String,
        description: String,
        uri: String,
        combine_amount: u64,
        starting_properties: vector<vector<u8>>,
        timestamp: u64
    }

    struct CreateMonsterEvent has store, drop {
        owner: address,
        collection_name: String,
        monster_name: String,
        monster_description: String,
        monster_uri: String,
        creation_number: u64,
        timestamp: u64
    }

    struct CreateEquipmentEvent has store, drop {
        onwer: address,
        collection_name: String,
        equipment_name: String,
        equipment_description: String,
        equipment_uri: String,
        amount: u64,
        creation_numbers: vector<u64>,
        timestamp: u64
    }

    struct BreedMonsterEvent has store, drop {
        onwer: address,
        collection_name: String,
        first_monster_creation_number: u64,
        second_monster_creation_number: u64,
        finish_timestamp: u64,
        timestamp: u64
    }

    struct HatchMonsterEvent has store, drop {
        owner: address,
        first_monster_creation_number: u64,
        second_monster_creation_number: u64,
        new_monster_creation_number: u64,
        new_monster_name: String,
        new_monster_description: String,
        new_monster_uri: String,
        new_monster_property_values: vector<vector<u8>>,
        timestamp: u64
    }

    struct CombineEquipmentEvent has store, drop {
        owner: address,
        collection_name: String,
        equipment_creation_numbers: vector<u64>,
        new_equipment_creation_number: u64,
        new_equipment_name: String,
        new_equipment_description: String,
        new_equipment_uri: String,
        new_equipment_property_values: vector<vector<u8>>,
        timestamp: u64
    }

    public fun new_create_monster_collection_event(
        name: String,
        description: String,
        uri: String,
        breeding_time: u64,
        starting_properties: vector<vector<u8>>,
        timestamp: u64
    ): CreateMonsterCollectionEvent {
        CreateMonsterCollectionEvent { name, description, uri, breeding_time, starting_properties, timestamp}
    }

    public fun new_create_equipment_collection_event(
        name: String,
        description: String,
        uri: String,
        combine_amount: u64,
        starting_properties: vector<vector<u8>>,
        timestamp: u64
    ): CreateEquipmentCollectionEvent {
        CreateEquipmentCollectionEvent { name, description, uri, combine_amount, starting_properties, timestamp }
    }

    public fun new_create_monster_event(
        owner: address,
        collection_name: String,
        monster_name: String,
        monster_description: String,
        monster_uri: String,
        creation_number: u64,
        timestamp: u64
    ): CreateMonsterEvent {
        CreateMonsterEvent {
            owner,
            collection_name,
            monster_name,
            monster_description,
            monster_uri,
            creation_number,
            timestamp
        }
    }

    public fun new_create_equipment_event(
        onwer: address,
        collection_name: String,
        equipment_name: String,
        equipment_description: String,
        equipment_uri: String,
        amount: u64,
        creation_numbers: vector<u64>,
        timestamp: u64
    ): CreateEquipmentEvent {
        CreateEquipmentEvent {
            onwer,
            collection_name,
            equipment_name,
            equipment_description,
            equipment_uri,
            amount,
            creation_numbers,
            timestamp
        }
    }

    public fun new_breed_monster_event(
        onwer: address,
        collection_name: String,
        first_monster_creation_number: u64,
        second_monster_creation_number: u64,
        finish_timestamp: u64,
        timestamp: u64
    ): BreedMonsterEvent {
        BreedMonsterEvent {
            onwer,
            collection_name,
            first_monster_creation_number,
            second_monster_creation_number,
            finish_timestamp,
            timestamp
        }
    }

    public fun new_hatch_monster_event(
        owner: address,
        first_monster_creation_number: u64,
        second_monster_creation_number: u64,
        new_monster_creation_number: u64,
        new_monster_name: String,
        new_monster_description: String,
        new_monster_uri: String,
        new_monster_property_values: vector<vector<u8>>,
        timestamp: u64
    ): HatchMonsterEvent {
        HatchMonsterEvent {
            owner,
            first_monster_creation_number,
            second_monster_creation_number,
            new_monster_creation_number,
            new_monster_name,
            new_monster_description,
            new_monster_uri,
            new_monster_property_values,
            timestamp
        }
    }

    public fun new_combine_equipment_event(
        owner: address,
        collection_name: String,
        equipment_creation_numbers: vector<u64>,
        new_equipment_creation_number: u64,
        new_equipment_name: String,
        new_equipment_description: String,
        new_equipment_uri: String,
        new_equipment_property_values: vector<vector<u8>>,
        timestamp: u64
    ): CombineEquipmentEvent {
        CombineEquipmentEvent {
            owner,
            collection_name,
            equipment_creation_numbers,
            new_equipment_creation_number,
            new_equipment_name,
            new_equipment_description,
            new_equipment_uri,
            new_equipment_property_values,
            timestamp
        }
    }
}