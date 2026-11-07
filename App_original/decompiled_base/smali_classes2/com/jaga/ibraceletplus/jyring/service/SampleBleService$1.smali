.class Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$1;
.super Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;
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

    .line 350
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$1;->this$0:Lcom/jaga/ibraceletplus/jyring/service/SampleBleService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$CallStateListener;-><init>(Lcom/jaga/ibraceletplus/jyring/service/SampleBleService$1;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 0

    return-void
.end method
