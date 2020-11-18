extends Control

onready var label = $PanelContainer/MarginContainer/Label

var baseText = ""

func _ready() -> void:
    baseText = label.text


func _on_Button_pressed() -> void:
    label.text += "\n\n" + baseText
