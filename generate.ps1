[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

python TTS/bin/synthesize.py `
  --text "Привет, Артём!" `
  --model_name tts_models/multilingual/multi-dataset/xtts_v2 `
  --speaker_wav "./my_voice.wav" `
  --language_idx "ru"


