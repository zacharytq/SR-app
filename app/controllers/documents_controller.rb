class DocumentsController < ApplicationController
    def new
        @document = Document.new
    end

    def create
        if logged_in?
            @document = current_user.documents.create(document_params)
            if @document.valid?
                redirect_to document_path(@document)
            else
                render :new
            end
        else
            redirect_to root_path
        end
            
    end

    def show
        @document = Document.find_by(id: params[:id])
    end

    private
    def document_params
        params.require(:document).permit(:title, :event_id, :security_clearance, :content, :person_ids => [])
    end
end