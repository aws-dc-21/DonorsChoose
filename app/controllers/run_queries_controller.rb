class RunQueriesController < ApplicationController
  def new
    @run_query = RunQuery.new
  end

  def create
    @run_query = RunQuery.new(run_query_params)

    if @run_query.valid?
      # Default render
    else
      render :action => 'new'
    end
  end

  private

  def run_query_params
    params.require(:run_query).permit(:sql)
  end
end