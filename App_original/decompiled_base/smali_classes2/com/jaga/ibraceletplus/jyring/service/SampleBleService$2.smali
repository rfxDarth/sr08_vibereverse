.class Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$2;
.super Landroid/telephony/PhoneStateListener;
.source "SampleBleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$2;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
