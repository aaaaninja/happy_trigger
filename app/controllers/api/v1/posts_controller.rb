# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApplicationController
      def index
        posts = Post.order(created_at: :desc)
        render json: { status: 'SUCCESS', message: 'loaded posts', data: posts }
      end

      def show
        post = Post.find(params[:id])
        render json: { status: 'SUCCESS', message: 'loaded the post', data: post }
      end

      def create
        post = Post.new(post_params)
        if post.save
          render json: { status: 'SUCCESS', message: 'loaded the post', data: post }
        else
          render json: { status: 'ERROR', message: 'post not saved', data: post.errors }
        end
      end

      def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: { status: 'SUCCESS', message: 'deleted the post', data: post }
      end

      def update
        post = Post.find(params[:id])
        if post.update(post_params)
          render json: { status: 'SUCCESS', message: 'updated the post', data: post }
        else
          render json: { status: 'SUCCESS', message: 'loaded the post', data: post }
        end
      end

      private

      def post_params
        params.require(:post).permit(:title)
      end
    end
  end
end
