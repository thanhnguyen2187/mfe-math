primer:
    just primer-serve & just primer-watch-all & wait

primer-serve:
    cd a-primer-for-the-mathematics-of-finance-engineering && \
    python -m http.server

primer-watch-all:
    #!/usr/bin/env -S uv run --script
    import os
    import subprocess
    from pathlib import Path

    processes = []

    os.chdir('a-primer-for-the-mathematics-of-finance-engineering/')
    for file in Path('.').rglob('*.typ'):
        proc = subprocess.Popen(['typst', 'watch', str(file)])
        processes.append(proc)

    for proc in processes:
        proc.wait()

