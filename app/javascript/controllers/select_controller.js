import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
    static targets = ["select", "curriculumSelect"]
    static values = {
        url: String,
        param: String
    }

    connect() {
        if (this.selectTarget.id === "") {
            this.selectTarget.id = Math.random().toString(36)
        }
    }

    change(event) {
        let params = new URLSearchParams()
        params.append(this.paramValue, event.target.selectedOptions[0].value)
        params.append("target", this.selectTarget.id)

        get(`${this.urlValue}?${params}`, {
            responseKind: "turbo-stream"
        })
    }
    chapterChange(event) {
        console.log(this.selectTarget.value)
        console.log(this.curriculumSelectTarget.value)

        let params = new URLSearchParams()
        params.append("hoge_id", this.selectTarget.value)
        params.append("fuga_id", this.curriculumSelectTarget.value)

        get(`/questions/lists?${params}`, {
            responseKind: "turbo-stream"
        })
    }
}
