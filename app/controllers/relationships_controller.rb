class RelationshipsController < ApplicationController
  def create
    relationship = current_user.relationships.create(thinking_id: params[:thinking_id])
    redirect_to thinkings_url
    flash[:success] = "#{relationship.thinking.factor}の実践思考を習慣形成表に追加しました!習慣形成表を見てみましょう!"
  end

  def destroy
    relationship = current_user.relationships.find_by(id: params[:id]).destroy
    redirect_to thinkings_url
    flash[:danger] = "#{relationship.thinking.factor}の実践思考を習慣形成表から削除しました!"
  end
end
