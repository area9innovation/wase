const wasmBrowserInstantiate = async (wasmModuleUrl, importObject) => {
  let response = undefined;

  if (!importObject) {
    importObject = {
      env: {
        abort: () => console.log("Abort!")
      }
    };
  }

  if (WebAssembly.instantiateStreaming) {
    response = await WebAssembly.instantiateStreaming(
      fetch(wasmModuleUrl),
      importObject
    );
  } else {
    const fetchAndInstantiateTask = async () => {
      const wasmArrayBuffer = await fetch(wasmModuleUrl).then(response =>
        response.arrayBuffer()
      );
      return WebAssembly.instantiate(wasmArrayBuffer, importObject);
    };
    response = await fetchAndInstantiateTask();
  }

  return response;
};

const runWasmEuler = async () => {
  // Instantiate the wasm module
  const wasmModule = await wasmBrowserInstantiate("./euler1.wasm");

  // Call the function export from wasm, save the result
  const res = wasmModule.instance.exports.euler1(10, 0);

console.log(${res});

  // print result
  document.body.textContent = `Euler1 result = ${res}`;
};

runWasmEuler();