"""Rebuild exact, print-sized TikZ figures. Normal exam builds use committed PDFs."""
import argparse
import json
from pathlib import Path
import subprocess

from tools.fetch_tectonic import fetch

ROOT = Path(__file__).resolve().parent


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("names", nargs="*", help="Diagram names; default: all")
    parser.add_argument("--tectonic", type=Path, help="Use an existing Tectonic 0.17.0 binary")
    parser.add_argument("--offline", action="store_true", help="Use only cached TeX packages")
    args = parser.parse_args()
    manifest = json.loads((ROOT / "diagrams/manifest.json").read_text())
    names = args.names or list(manifest)
    if unknown := set(names) - manifest.keys():
        parser.error(f"Unknown diagrams: {', '.join(sorted(unknown))}")
    binary = args.tectonic.resolve() if args.tectonic else fetch()
    version = subprocess.check_output([str(binary), "--version"], text=True).strip()
    if version != "Tectonic 0.17.0":
        parser.error(f"Expected Tectonic 0.17.0, got {version}")
    output = ROOT / "assets/diagrams"
    output.mkdir(parents=True, exist_ok=True)
    for name in names:
        command = [str(binary), "-X", "compile", "-Z", "deterministic-mode", "--untrusted"]
        if args.offline:
            command.append("-C")
        command.extend(["--outdir", str(output), f"{name}.tex"])
        result = subprocess.run(command, cwd=ROOT / "diagrams/tex", capture_output=True, text=True)
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        print(f"Rendered {name}", flush=True)


if __name__ == "__main__":
    main()
