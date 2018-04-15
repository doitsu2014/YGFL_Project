'use-strict'

var Utils = function () {
    this.GetFieldsFromFormData = function (formData, result) {
        for (var i = 0; i < formData.children.length; ++i) {
            try {
                var child = formData.children[i];
                if (child.localName === 'input') {
                    result[child.name] = child.value;
                }

                if (child.children && child.children.length) {
                    this.GetFieldsFromFormData(child, result);
                }

            } catch (e) {
                console.log(e);
            }
        }
        return result;
    }
}