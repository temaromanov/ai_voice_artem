from TTS.utils.manage import ModelManager

manager = ModelManager()
models = manager.list_models()

for m in models:
    print(m)
