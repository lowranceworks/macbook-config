// enable relative lines
inkdrop.onEditorLoad((editor) => {
  const { cm } = editor;

  function showRelativeLines(cm) {
    const lineNum = cm.getCursor().line + 1;

    if (cm.state.curLineNum === lineNum) {
      return;
    }

    cm.state.curLineNum = lineNum;
    cm.setOption('lineNumberFormatter', (l) => {
      return l === lineNum ? lineNum : Math.abs(lineNum - l);
    });
  }

  cm.on('cursorActivity', showRelativeLines);
});