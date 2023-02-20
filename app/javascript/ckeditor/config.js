CKEDITOR.editorConfig = function (config) {


    config.height = 100;
    config.toolbarGroups = [
            { name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
            { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
            { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
            { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
            { name: 'links', groups: [ 'links' ] },
            { name: 'insert', groups: [ 'insert' ] },
            { name: 'styles', groups: [ 'styles' ] },
            { name: 'colors', groups: [ 'colors' ] },
            { name: 'tools', groups: [ 'tools' ] },
        ];
    config.removeButtons = 'Templates,Save,NewPage,Preview,Print,Find,Replace,SelectAll,Scayt,Form,Paste,PasteText,PasteFromWord,Checkbox,Radio,TextField,Textarea,Select,Button,About,ShowBlocks,Flash,HiddenField,Subscript,Superscript,Language,HorizontalRule,PageBreak';
}