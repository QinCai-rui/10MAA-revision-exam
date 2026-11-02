"""Fetch a checksum-pinned, user-local Tectonic binary. No system install."""
from pathlib import Path
import hashlib
import io
import platform
import tarfile
import urllib.request

ROOT = Path(__file__).resolve().parents[1]
VERSION = "0.17.0"
ARCHIVE_SHA256 = "8533d07f9ccbd7a65824b9e0459041bca34af1eb33daba48f59215593753a3b7"
BINARY_SHA256 = "a98aa59ad5c1df39a6c9e56cbfc5088f2b11d6c179c0130b97998e4bd46a46da"
URL = (
    "https://github.com/tectonic-typesetting/tectonic/releases/download/"
    f"tectonic%40{VERSION}/tectonic-{VERSION}-x86_64-unknown-linux-musl.tar.gz"
)


def fetch():
    target = ROOT / ".tools" / "tectonic"
    if target.exists():
        if hashlib.sha256(target.read_bytes()).hexdigest() != BINARY_SHA256:
            raise RuntimeError(f"Checksum mismatch for {target}; not overwriting it")
        return target
    if platform.system() != "Linux" or platform.machine() != "x86_64":
        raise RuntimeError("Use Tectonic 0.17.0 for your platform with --tectonic PATH")
    request = urllib.request.Request(URL, headers={"User-Agent": "10MAA-diagram-build"})
    with urllib.request.urlopen(request, timeout=120) as response:
        data = response.read()
    if hashlib.sha256(data).hexdigest() != ARCHIVE_SHA256:
        raise RuntimeError("Tectonic archive checksum mismatch")
    with tarfile.open(fileobj=io.BytesIO(data), mode="r:gz") as archive:
        member = archive.getmember("tectonic")
        with archive.extractfile(member) as binary:
            data = binary.read()
    if hashlib.sha256(data).hexdigest() != BINARY_SHA256:
        raise RuntimeError("Tectonic binary checksum mismatch")
    target.parent.mkdir(exist_ok=True)
    target.write_bytes(data)
    target.chmod(0o755)
    return target


if __name__ == "__main__":
    print(fetch())
