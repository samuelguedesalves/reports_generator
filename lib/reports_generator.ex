defmodule ReportsGenerator do
  def build(filename) do
    "./reports/#{filename}"
    |> File.read()
    |> handle_file()
  end

  def handle_file({:ok, file_content}), do: file_content
  def handle_file({:error, _reason}), do: "Error while opening file!"
end
