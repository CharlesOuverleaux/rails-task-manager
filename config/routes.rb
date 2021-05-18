Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # CREATE create a page where user fills in information to create a task
  get 'tasks/new', to: 'tasks#new'
  # CREATE a task based on the new input
  post 'tasks', to: 'tasks#create'

  # READ display all tasks on the index page
  get 'tasks', to: 'tasks#index'
  # READ display id page for each task with its details
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE edit a task, creates the page where you can edit the task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # UPDATE, how you update the task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE, how you delete a task
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy
end
