unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.Series, Math;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Button1: TButton;
    ComboBox2: TComboBox;
    ListBox1: TListBox;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    TabSheet2: TTabSheet;
    Chart2: TChart;
    Chart3: TChart;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TBarSeries;
    Series11: TBarSeries;
    Chart4: TChart;
    Panel2: TPanel;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Panel3: TPanel;
    Chart5: TChart;
    Series15: TLineSeries;
    TabSheet3: TTabSheet;
    Chart6: TChart;
    Series16: TLineSeries;
    Series17: TPointSeries;
    procedure TrackBar1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure BuiltLearningTime(SeriesA, SeriesB, SeriesC: TLineSeries; ChartA: TChart);
    procedure BuiltMotivation(SeriesA, SeriesB, SeriesC: TLineSeries; ChartA: TChart);
    procedure BuiltExpectation(SeriesA, SeriesB, SeriesC: TLineSeries; ChartA: TChart);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet2Resize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ValueRules();
    procedure Modification();
    procedure MaxCombination();
    procedure SumCombination();
    procedure WeightCenter();
    procedure MaximumScalarisation();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MFt1, MFt2, MFt3, MFm1, MFm2, MFm3: Double;

implementation

{$R *.dfm}
procedure TForm1.MaximumScalarisation();
var
t: Integer;
MFx, y, max: Double;
begin
Chart6.Title.Caption := 'Метод максимального значения функции принадлежности';
max := 0;
Series17.Clear;
Series17.Legend.Text := 'Результат скаляризации';
  with Series16 do begin
        for t := 0 to 301 do begin
            y := YValues.Value[t];
           if y > max then begin
            max := y;
            MFx := XValues.Value[t];
           end;
        end;
        Legend.Text := 'MFx = Max(yi) = ' + SimpleRoundTo(MFx, -2).ToString;
        Series17.AddXY(SimpleRoundTo(MFx, -2), 0, '', clred);
        Showmessage('Чтобы достигнуть нового уровня владения английским языком вам потребуется ' +
        SimpleRoundTo(MFx, -2).ToString + ' часов');
      end;
end;
procedure TForm1.WeightCenter();
var
t: Integer;
MFx, sumxy, sumy, x, y: Double;
begin
Chart6.Title.Caption := 'Метод Центр тяжести';
sumxy := 0;
sumy := 0;
Series17.Clear;
Series17.Legend.Text := 'Результат скаляризации';
    with Series16 do begin
      for t := 0 to 301 do begin
         x := XValues.Value[t];
         y := YValues.Value[t];
         sumxy := sumxy + (x * y);
         sumy := sumy + y;
      end;
      MFx := sumxy / sumy;
      Legend.Text := 'MFx=Sum(xi*yi)/sum(yi) = ' + SimpleRoundTo(MFx, -2).ToString;
      Series17.AddXY(SimpleRoundTo(MFx, -2), 0, '', clred);
      Showmessage('Чтобы достигнуть нового уровня владения английским языком вам потребуется ' +
      SimpleRoundTo(MFx, -2).ToString + ' часов');
    end;
end;
procedure TForm1.SumCombination();
var
t: Integer;
p1, p2, p3, sum: Double;
begin
Chart5.Title.Caption := 'Метод Sum Combination';
  with Series15 do begin
    Clear;
    Series16.Clear;
    Series16.Color := clLime;
    Color := clLime;
    Legend.Text := 'MFy=Sum(MFy1,MFy2,MFy3)';
    for t := 150 to 451 do begin
       p1 := Series12.YValues.Value[t - 150];
       p2 := Series13.YValues.Value[t - 150];
       p3 := Series14.YValues.Value[t - 150];
      sum := p1 + p2 + p3;
        AddXY(t, sum, t.ToString, clLime);
        Series16.AddXY(t, sum, t.ToString, clLime);
    end;
  end;
end;
procedure TForm1.MaxCombination();
var
t: Integer;
p1, p2, p3, max: Double;
begin
  Chart5.Title.Caption := 'Метод Max Combination';
  with Series15 do begin
    Clear;
    Series16.Clear;
    Series16.Color := clLime;
    Color := clLime;
    Legend.Text := 'MFy=max(MFy1,MFy2,MFy3)';
    for t := 150 to 451 do begin
       p1 := Series12.YValues.Value[t - 150];
       p2 := Series13.YValues.Value[t - 150];
       p3 := Series14.YValues.Value[t - 150];
      if (p1 > p2) then
        max := p1
        else max := p2;
      if (max < p3) then
        max := p3;
        AddXY(t, max, t.ToString, clLime);
        Series16.AddXY(t, max, t.ToString, clLime);
    end;

  end;
end;
procedure TForm1.Modification();
var
rule3min, rule2max, rule1max: Double;
t: Integer;
begin
  if MFt3 >  MFm3 then
    rule3min := MFm3
    else rule3min := MFt3;
  if MFt1 > MFm1 then
    rule1max := MFt1
    else rule1max := MFm1;
  if MFt2 > MFm2 then
    rule2max := MFt2
    else rule2max := MFm2;
  Chart4.Title.Caption := 'Модификация методом «произведения»';
     with Series12 do begin
      Clear;
      Legend.Text := 'MFy1 = MFp1*min(MFt3,MFm3)';
      Color := clred;
      for t := 150 to 451 do begin
        if t <= 200 then
        AddXY(t, 1 * rule3min, t.ToString, clred);
        if (t > 200) and (t < 300) then
        AddXY(t, ((300-t)/100) * rule3min, t.ToString, clred);
        if t >= 300 then
        AddXY(t, 0 * rule3min, t.ToString, clred);
      end;
    end;
    with Series13 do begin
      Clear;
      Legend.Text := 'MFy2 = MFp2*max(MFt2,MFm2)';
      Color := clblue;
      for t := 150 to 451 do begin
        if (t < 200) or (t > 350) then
        AddXY(t, 0 * rule2max, t.ToString, clblue);
        if (t >= 200) and (t < 300) then
        AddXY(t, ((t-200)/100) * rule2max, t.ToString, clblue);
        if (t >= 300) and (t <= 350) then
        AddXY(t, ((350-t)/50) * rule2max, t.ToString, clblue);
      end;
    end;
    with Series14 do begin
      Clear;
      Legend.Text := 'MFy3 = MFp3*max(MFt1,MFm1)';
      Color := clLime;
      for t := 150 to 451 do begin
        if t < 300 then
        AddXY(t, 0 * rule1max, t.ToString, cllime);
        if (t >= 300) and (t < 350) then
        AddXY(t, ((t-300)/50) * rule1max, t.ToString, cllime);
        if t >= 350 then
        AddXY(t, 1 * rule1max, t.ToString, cllime);
      end;
    end;
end;

procedure TForm1.ValueRules();
var
SpendTime: Integer;
LevelMotivation: Integer;
begin
  SpendTime := SpinEdit1.Value;
  with Series4 do begin
    MFt1 := YValues.Value[spendtime - 10];
    Legend.Text := Legend.Text + ' MFt1 = ' + SimpleRoundTo(MFt1, -2).ToString;
  end;

  with Series5 do begin
    MFt2 := YValues.Value[spendtime - 10];
    Legend.Text := Legend.Text + ' MFt2 = ' + SimpleRoundTo(MFt2, -2).ToString;
  end;

  with Series6 do begin
    MFt3 := YValues.Value[spendtime - 10];
    Legend.Text := Legend.Text + ' MFt3 = ' + SimpleRoundTo(MFt3, -2).ToString;
  end;

  LevelMotivation := TrackBar1.Position;

   with Series7 do begin
    MFm1 := YValues.Value[LevelMotivation];
    Legend.Text := Legend.Text + ' MFm1 = ' + SimpleRoundTo(MFm1, -2).ToString;
  end;

  with Series8 do begin
    MFm2 := YValues.Value[LevelMotivation];
    Legend.Text := Legend.Text + ' MFm2 = ' + SimpleRoundTo(MFm2, -2).ToString;
  end;

  with Series9 do begin
    MFm3 := YValues.Value[LevelMotivation];
    Legend.Text := Legend.Text + ' MFm3 = ' + SimpleRoundTo(MFm3, -2).ToString;
  end;

  with Series10 do begin
    Clear;
    AddXY(SpendTime, 1, '', $00A8974E);
    Legend.Text := 'Затрачено времени: ' + SpendTime.ToString;
  end;

  with Series11 do begin
    Clear;
    AddXY(LevelMotivation, 1, '', $00A8974E);
    Legend.Text := 'Уровень мотивации: ' + LevelMotivation.ToString;
  end;
end;

procedure TForm1.BuiltLearningTime(SeriesA, SeriesB, SeriesC: TLineSeries; ChartA: TChart);
var
t: Integer;
begin
    ChartA.Title.Caption := 'Время, затраченное в день на изучение английского языка';
    with SeriesA do begin
      Clear;
      Legend.Text := 'Мало времени в день';
      Color := clred;
      for t := 10 to 241 do begin
        if t <= 30 then
        AddXY(t, 1, t.ToString, clred);
        if (t > 30) and (t < 90) then
        AddXY(t, (90-t)/60, t.ToString, clred);
        if t >= 90 then
        AddXY(t, 0, t.ToString, clred);
      end;
    end;
    with SeriesB do begin
      Clear;
      Legend.Text := 'Среднее время в день';
      Color := clblue;
      for t := 10 to 241 do begin
        if (t < 30) or (t > 120) then
        AddXY(t, 0, t.ToString, clblue);
        if (t >= 30) and (t < 90) then
        AddXY(t, (t-30)/60, t.ToString, clblue);
        if (t >= 90) and (t <= 120) then
        AddXY(t, (120-t)/30, t.ToString, clblue);
      end;
    end;
    with SeriesC do begin
      Clear;
      Legend.Text := 'Много времени в день';
      Color := clLime;
      for t := 10 to 241 do begin
        if t < 90 then
        AddXY(t, 0, t.ToString, cllime);
        if (t >= 90) and (t < 120) then
        AddXY(t, (t-90)/30, t.ToString, cllime);
        if t >= 120 then
        AddXY(t, 1, t.ToString, cllime);
      end;
    end;
end;

procedure TForm1.BuiltMotivation(SeriesA, SeriesB, SeriesC: TLineSeries; ChartA: TChart);
var
t: Integer;
begin
    ChartA.Title.Caption := 'Уровень мотивации';
     with SeriesA do begin
      Clear;
      Legend.Text := 'Низкая мотивация';
      Color := clred;
      for t := 0 to 101 do begin
        if t <= 25 then
        AddXY(t,1, t.ToString, clred);
        if (t > 25) and (t < 50) then
        AddXY(t,(50-t)/25, t.ToString, clred);
        if t >= 50 then
        AddXY(t,0, t.ToString, clred);
      end;
    end;
    with SeriesB do begin
      Clear;
      Legend.Text := 'Средняя мотивация';
      Color := clblue;
      for t := 0 to 101 do begin
        if (t < 25) or (t > 75) then
        AddXY(t,0, t.ToString, clblue);
        if (t >= 25) and (t < 50) then
        AddXY(t,(t-25)/25, t.ToString, clblue);
        if (t >= 50) and (t <= 75) then
        AddXY(t,(75-t)/25, t.ToString, clblue);
      end;
    end;
    with SeriesC do begin
      Clear;
      Legend.Text := 'Высокая мотивация';
      Color := clLime;
      for t := 0 to 101 do begin
        if t < 50 then
        AddXY(t,0, t.ToString, cllime);
        if (t >= 50) and (t < 75) then
        AddXY(t,(t-50)/25, t.ToString, cllime);
        if t >= 75 then
        AddXY(t,1, t.ToString, cllime);
      end;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  BuiltLearningTime(Series4, Series5, Series6, Chart2);
  BuiltMotivation(Series7, Series8, Series9, Chart3);
  ValueRules();
  Modification();
  if ComboBox1.ItemIndex = 0 then
    MaxCombination();
  if ComboBox1.ItemIndex = 1 then
    SumCombination();
  if ComboBox2.ItemIndex = 0 then
    WeightCenter();
  if ComboBox2.ItemIndex = 1 then
    MaximumScalarisation();

end;

procedure TForm1.BuiltExpectation(SeriesA, SeriesB, SeriesC: TLineSeries; ChartA: TChart);
var
t: Integer;
begin
    ChartA.Title.Caption := 'Сколько времени потребуется, чтобы достигнуть нового уровня владения английским языком';
     with SeriesA do begin
      Clear;
      Legend.Text := 'Короткий период времени';
      Color := clred;
      for t := 150 to 451 do begin
        if t <= 200 then
        AddXY(t, 1, t.ToString, clred);
        if (t > 200) and (t < 300) then
        AddXY(t, (300-t)/100, t.ToString, clred);
        if t >= 300 then
        AddXY(t, 0, t.ToString, clred);
      end;
    end;
    with SeriesB do begin
      Clear;
      Legend.Text := 'Средний период времени';
      Color := clblue;
      for t := 150 to 451 do begin
        if (t < 200) or (t > 350) then
        AddXY(t, 0, t.ToString, clblue);
        if (t >= 200) and (t < 300) then
        AddXY(t, (t-200)/100, t.ToString, clblue);
        if (t >= 300) and (t <= 350) then
        AddXY(t, (350-t)/50, t.ToString, clblue);
      end;
    end;
    with SeriesC do begin
      Clear;
      Legend.Text := 'Продолжительный период времени';
      Color := clLime;
      for t := 150 to 451 do begin
        if t < 300 then
        AddXY(t, 0, t.ToString, cllime);
        if (t >= 300) and (t < 350) then
        AddXY(t, (t-300)/50, t.ToString, cllime);
        if t >= 350 then
        AddXY(t, 1, t.ToString, cllime);
      end;
    end;
end;
procedure TForm1.ListBox1Click(Sender: TObject);
begin
   if ListBox1.ItemIndex = 0 then
         BuiltLearningTime(Series1, Series2, Series3, Chart1);
  if ListBox1.ItemIndex = 1 then
         BuiltMotivation(Series1, Series2, Series3, Chart1);
  if ListBox1.ItemIndex = 2 then
         BuiltExpectation(Series1, Series2, Series3, Chart1);
end;

procedure TForm1.TabSheet2Resize(Sender: TObject);
begin
  Panel2.Width := TabSheet2.Width div 2 - 2;
  Chart2.Height := Panel2.Height div 2 - 2;
  Chart3.Height := Panel2.Height div 2 - 2;
  Panel3.Width := TabSheet2.Width div 2 - 2;
  Chart4.Height := Panel3.Height div 2 - 2;
  Chart5.Height := Panel3.Height div 2 - 2;end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
Panel2.Width := TabSheet2.Width div 2 - 2;
 Chart2.Height := Panel2.Height div 2 - 2;
  Chart3.Height := Panel2.Height div 2 - 2;
  Panel3.Width := TabSheet2.Width div 2 - 2;
   Chart4.Height := Panel3.Height div 2 - 2;
  Chart5.Height := Panel3.Height div 2 - 2;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
Label3.Caption := TrackBar1.Position.ToString;
end;

end.
