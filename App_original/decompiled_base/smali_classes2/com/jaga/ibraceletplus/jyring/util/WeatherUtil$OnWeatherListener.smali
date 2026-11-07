.class public interface abstract Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil$OnWeatherListener;
.super Ljava/lang/Object;
.source "WeatherUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/util/WeatherUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnWeatherListener"
.end annotation


# virtual methods
.method public abstract getCurrentWeather(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sxr/sdk/ble/keepfit/aidl/Weather;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getWeatherError(Lcom/android/volley/VolleyError;)V
.end method
