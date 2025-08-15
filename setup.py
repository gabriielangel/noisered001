
from setuptools import setup

APP = ['temporal_denoiser/__main__.py']
DATA_FILES = []
OPTIONS = {
    'argv_emulation': True,
    'packages': ['numpy', 'cv2', 'imageio', 'PySide6'],
}

setup(
    app=APP,
    name='TemporalDenoiser',
    data_files=DATA_FILES,
    options={'py2app': OPTIONS},
    setup_requires=['py2app'],
)
