defmodule PyCryptX.Python.Port do
    use Piton.Port

    @worker_name :crypter

    @timeout 5000

    @python_path Path.expand __DIR__ <> "/code"

    def start_link() do
        PyCryptX.Python.Port.start_link([path: @python_path, python: "python"], [name: @worker_name])
    end

    @spec hash_password(raw_password :: String.t, timeout :: integer) :: hashed_password :: String.t
    def hash_password(raw_password, timeout \\ @timeout) do
        PyCryptX.Python.Port.execute(@worker_name, :bcryptx, :hash_password, [raw_password], timeout)
    end

    @spec check_password(raw_password :: String.t, hashed_password :: String.t, timeout :: integer) :: true | false
    def check_password(raw_password, hashed_password, timeout \\ @timeout) do
        PyCryptX.Python.Port.execute(@worker_name, :bcryptx, :check_password, [raw_password, hashed_password], timeout)
    end

    def get_path(), do: @python_path
end