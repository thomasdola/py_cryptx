# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :py_cryptx, 
    python_path: Path.join(:code.lib_dir(:py_cryptx), "python")

