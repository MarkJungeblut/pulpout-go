package equipment

type Equipment struct {
	ID    string          `json:"_id"`
	Names []EquipmentName `json:"names"`
}
