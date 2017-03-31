class LibrarySubscriptionsController < ApplicationController
  before_action :set_library_subscription, only: [:show, :edit, :update, :destroy]

  # GET /library_subscriptions
  # GET /library_subscriptions.json
  def index
    @library_subscriptions = LibrarySubscription.all
  end

  # GET /library_subscriptions/1
  # GET /library_subscriptions/1.json
  def show
  end

  # GET /library_subscriptions/new
  def new
    @library_subscription = LibrarySubscription.new
  end

  # GET /library_subscriptions/1/edit
  def edit
  end

  # POST /library_subscriptions
  # POST /library_subscriptions.json
  def create
    @library_subscription = LibrarySubscription.new(library_subscription_params)

    respond_to do |format|
      if @library_subscription.save
        format.html { redirect_to @library_subscription, notice: 'Library subscription was successfully created.' }
        format.json { render :show, status: :created, location: @library_subscription }
      else
        format.html { render :new }
        format.json { render json: @library_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /library_subscriptions/1
  # PATCH/PUT /library_subscriptions/1.json
  def update
    respond_to do |format|
      if @library_subscription.update(library_subscription_params)
        format.html { redirect_to @library_subscription, notice: 'Library subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @library_subscription }
      else
        format.html { render :edit }
        format.json { render json: @library_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_subscriptions/1
  # DELETE /library_subscriptions/1.json
  def destroy
    @library_subscription.destroy
    respond_to do |format|
      format.html { redirect_to library_subscriptions_url, notice: 'Library subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library_subscription
      @library_subscription = LibrarySubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_subscription_params
      params.require(:library_subscription).permit(:status, :start_date, :end_date)
    end
end
