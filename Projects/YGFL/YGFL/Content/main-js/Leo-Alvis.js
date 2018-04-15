'use-strict'

var Utils = {

    GetFieldsFromFormData: function (formData) {
        var result = {};
        for (var i = 0; i < formData.children.length; ++i) {
            try {
                var child = formData.children[i];
                if (child.localName === 'input') {
                    result[child.name] = child.value;
                }
            } catch (e) {
                console.log(e);
            }
        }
        return result;
    }

}
