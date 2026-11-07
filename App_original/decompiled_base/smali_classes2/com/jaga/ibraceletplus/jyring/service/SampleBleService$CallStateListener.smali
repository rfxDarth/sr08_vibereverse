.class abstract Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "SampleBleService.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CallStateListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$1;)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCallStateChanged(I)V
.end method
