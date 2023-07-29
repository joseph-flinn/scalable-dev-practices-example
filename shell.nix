with import <nixpkgs> {};
let
  pythonEnv = python310.withPackages(ps: [
    ps.fastapi
    ps.uvicorn
    ps.requests

    ps.black
    ps.pytest
  ]);
in mkShell {
  packages = [
    pythonEnv
  ];
}

