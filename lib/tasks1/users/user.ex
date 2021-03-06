defmodule Tasks1.Users.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :name, :string
		has_many :task_items, Tasks1.Tasks.TaskItem		

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :name])
    |> validate_required([:email, :name])
  end
end
