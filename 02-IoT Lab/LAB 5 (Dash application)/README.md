## Creating the Dash Application for the covid dataset

```python
import dash
import plotly.express as px
import pandas as pd
from dash import html
from dash import dcc
from dash.dependencies import Input, Output
# import dash_core_components as dcc
# import dash_html_components as html
df = pd.read_csv("C:/Users/iwill/Desktop/VIT/Semester 6/IoT Lab/Lab 5/covid_19_india.csv")
gen = df.State.unique()
app = dash.Dash(__name__)
app.layout=html.Div([
  html.H1("19BEE0167-Swarup Tripathy-Graph analysis for COVID-19"),
  dcc.Dropdown(
    id=’State-choice’,
    options =[{’label’:x,’value’:x} for x in gen],
    value=gen[0],
    clearable=False),
  dcc.Graph(id="bar-chart")
])
@app.callback(
  Output(component_id="bar-chart", component_property=’figure’),
  Input(component_id=’State-choice’, component_property=’value’)
)
def interactive_graphing(State):
  mask = df["State"] == State
  fig = px.histogram(df[mask],x="Date", y="Confirmed")
  # print(value_Genre)
  return fig
if __name__==’__main__’:
  app.run_server()

```
