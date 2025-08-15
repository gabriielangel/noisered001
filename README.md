
# TemporalDenoiser

PySide6 macOS GUI for temporal noise reduction with **optical-flow alignment**, a **Preview** (original vs denoised), **streaming/rolling-buffer** export, and an **Advanced** panel for Farneback parameters. Optional CinemaDNG support via rawpy+tifffile placeholders.

## Dev (macOS)
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python -m temporal_denoiser.main
```

## Build .app and .dmg locally
```bash
./build_py2app.sh
./build_dmg.sh
```

## GitHub Actions
Tag a commit like `v1.0.0` or run the workflow manually. CI builds a `.dmg` artifact.

## CinemaDNG (optional)
Install `rawpy` and `tifffile` to enable reading `.dng` and writing linear RGB DNG-like TIFF. For proper metadata, use `exiftool` (see comments in code).
