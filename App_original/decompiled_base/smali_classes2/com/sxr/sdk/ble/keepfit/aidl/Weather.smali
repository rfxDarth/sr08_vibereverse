.class public Lcom/sxr/sdk/ble/keepfit/aidl/Weather;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AQI:I

.field private CurT:I

.field private DaytimeWeather:I

.field private Eveningweather:I

.field private PM25:I

.field private UV:I

.field private airQuality:I

.field private hightestT:I

.field private lowestT:I

.field private timestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather$1;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/Weather$1;-><init>()V

    sput-object v0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIIIII)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->timestamp:I

    .line 104
    iput p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->DaytimeWeather:I

    .line 105
    iput p3, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->Eveningweather:I

    .line 106
    iput p4, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->lowestT:I

    .line 107
    iput p5, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->hightestT:I

    .line 108
    iput p6, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->airQuality:I

    .line 109
    iput p7, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->PM25:I

    .line 110
    iput p8, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->UV:I

    .line 111
    iput p9, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->AQI:I

    .line 112
    iput p10, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CurT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->timestamp:I

    .line 11
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->DaytimeWeather:I

    .line 12
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->Eveningweather:I

    .line 13
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->lowestT:I

    .line 14
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->hightestT:I

    .line 15
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->airQuality:I

    .line 16
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->PM25:I

    .line 17
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->UV:I

    .line 18
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->AQI:I

    .line 19
    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CurT:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->timestamp:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->DaytimeWeather:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->Eveningweather:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->lowestT:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->hightestT:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->airQuality:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->PM25:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->UV:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->AQI:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CurT:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAQI()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->AQI:I

    return v0
.end method

.method public getAirQuality()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->airQuality:I

    return v0
.end method

.method public getCurT()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CurT:I

    return v0
.end method

.method public getDaytimeWeather()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->DaytimeWeather:I

    return v0
.end method

.method public getEveningweather()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->Eveningweather:I

    return v0
.end method

.method public getHightestT()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->hightestT:I

    return v0
.end method

.method public getLowestT()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->lowestT:I

    return v0
.end method

.method public getPM25()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->PM25:I

    return v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->timestamp:I

    return v0
.end method

.method public getUV()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->UV:I

    return v0
.end method

.method public setAQI(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->AQI:I

    return-void
.end method

.method public setAirQuality(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->airQuality:I

    return-void
.end method

.method public setCurT(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CurT:I

    return-void
.end method

.method public setDaytimeWeather(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->DaytimeWeather:I

    return-void
.end method

.method public setEveningweather(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->Eveningweather:I

    return-void
.end method

.method public setHightestT(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->hightestT:I

    return-void
.end method

.method public setLowestT(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->lowestT:I

    return-void
.end method

.method public setPM25(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->PM25:I

    return-void
.end method

.method public setTimestamp(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->timestamp:I

    return-void
.end method

.method public setUV(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->UV:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 135
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->timestamp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->DaytimeWeather:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->Eveningweather:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->lowestT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->hightestT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->airQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->PM25:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->UV:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->AQI:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget p2, p0, Lcom/sxr/sdk/ble/keepfit/aidl/Weather;->CurT:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
