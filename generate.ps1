[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

# Общий текст
$text = "Утро. Сел поработать. Прошло 3 часа — ничего не готово."

# Папка с голосами
$voices = @(
    "voices\avinov_sergey.wav",
    "voices\maliiv_sergey.wav",
    "voices\germash_denis.wav",
    "voices\Ilia_prudovskiy.wav",
    "voices\lihorad_oleg.wav"
)

foreach ($voice in $voices) {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($voice)
    Write-Host "`n ▶️ Генерация голоса: $name"

    python TTS/bin/synthesize.py `
        --text "$text" `
        --model_name "tts_models/multilingual/multi-dataset/xtts_v2" `
        --speaker_wav "$voice" `
        --language_idx "ru" `
        --out_path "tts_output_$name.wav"
}



