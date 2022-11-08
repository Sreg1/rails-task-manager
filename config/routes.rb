# First, add a new route to list the tasks, following the convention from the lecture.
# Then, add a controller action and its view. This action should fetch all tasks, and
# a view should loop over these to display them

Rails.application.routes.draw do
  # list all tasks
  get 'tasks', to: 'tasks#index'

  # add a new task
  # 1. Provide the form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # 2. Send the form
  post 'tasks', to: 'tasks#create'

  # view the details of a task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit a new task (mark as completed, update title & details)
  # 1. Provide the form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # 2. Send the form
  patch 'tasks/:id', to: 'tasks#update'

  # remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
