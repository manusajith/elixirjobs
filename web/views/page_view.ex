defmodule ElixirJobs.PageView do
  use ElixirJobs.Web, :view
  use Timex

  def convert_date(epoch_time) do
    {:ok, datetime} = epoch_time |> DateTime.from_unix
              datetime |> DateTime.to_iso8601
  end

  def to_html(text) do
    raw Earmark.to_html(text)
  end
end
