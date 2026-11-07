.class public Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# instance fields
.field private aqi:I

.field private cityId:I

.field private cityName:Ljava/lang/String;

.field private coordLat:D

.field private coordLon:D

.field private dt:J

.field private mainHumidity:I

.field private mainTemp:D

.field private mainTempMax:D

.field private mainTempMin:D

.field private perssure:I

.field private pm25:I

.field private sysCountry:Ljava/lang/String;

.field private sysSunries:J

.field private sysSunset:J

.field private uvi:D

.field private weatherDesc:Ljava/lang/String;

.field private weatherIcon:Ljava/lang/String;

.field private weatherId:I

.field private weatherMain:Ljava/lang/String;

.field private winDeg:I

.field private windSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAqi()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->aqi:I

    return v0
.end method

.method public getCityId()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->cityId:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoordLat()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->coordLat:D

    return-wide v0
.end method

.method public getCoordLon()D
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->coordLon:D

    return-wide v0
.end method

.method public getDt()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->dt:J

    return-wide v0
.end method

.method public getMainHumidity()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainHumidity:I

    return v0
.end method

.method public getMainTemp()D
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainTemp:D

    return-wide v0
.end method

.method public getMainTempMax()D
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainTempMax:D

    return-wide v0
.end method

.method public getMainTempMin()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainTempMin:D

    return-wide v0
.end method

.method public getPerssure()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->perssure:I

    return v0
.end method

.method public getPm25()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->pm25:I

    return v0
.end method

.method public getSysCountry()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->sysCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getSysSunries()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->sysSunries:J

    return-wide v0
.end method

.method public getSysSunset()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->sysSunset:J

    return-wide v0
.end method

.method public getUvi()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->uvi:D

    return-wide v0
.end method

.method public getWeatherDesc()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherIcon()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherId:I

    return v0
.end method

.method public getWeatherMain()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherMain:Ljava/lang/String;

    return-object v0
.end method

.method public getWinDeg()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->winDeg:I

    return v0
.end method

.method public getWindSpeed()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->windSpeed:F

    return v0
.end method

.method public setAqi(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->aqi:I

    return-void
.end method

.method public setCityId(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->cityId:I

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setCoordLat(D)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->coordLat:D

    return-void
.end method

.method public setCoordLon(D)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->coordLon:D

    return-void
.end method

.method public setDt(J)V
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->dt:J

    return-void
.end method

.method public setMainHumidity(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainHumidity:I

    return-void
.end method

.method public setMainTemp(D)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainTemp:D

    return-void
.end method

.method public setMainTempMax(D)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainTempMax:D

    return-void
.end method

.method public setMainTempMin(D)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->mainTempMin:D

    return-void
.end method

.method public setPerssure(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->perssure:I

    return-void
.end method

.method public setPm25(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->pm25:I

    return-void
.end method

.method public setSysCountry(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->sysCountry:Ljava/lang/String;

    return-void
.end method

.method public setSysSunries(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->sysSunries:J

    return-void
.end method

.method public setSysSunset(J)V
    .locals 0

    .line 195
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->sysSunset:J

    return-void
.end method

.method public setUvi(D)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->uvi:D

    return-void
.end method

.method public setWeatherDesc(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherDesc:Ljava/lang/String;

    return-void
.end method

.method public setWeatherIcon(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherIcon:Ljava/lang/String;

    return-void
.end method

.method public setWeatherId(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherId:I

    return-void
.end method

.method public setWeatherMain(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->weatherMain:Ljava/lang/String;

    return-void
.end method

.method public setWinDeg(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->winDeg:I

    return-void
.end method

.method public setWindSpeed(F)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/WeatherInfo;->windSpeed:F

    return-void
.end method
