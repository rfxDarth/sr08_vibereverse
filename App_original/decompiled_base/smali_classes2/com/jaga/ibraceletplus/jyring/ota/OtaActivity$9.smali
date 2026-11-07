.class Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$9;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->startDeviceScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 597
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity$9;->this$0:Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;->access$1400(Lcom/jaga/ibraceletplus/jyring/ota/OtaActivity;)V

    return-void
.end method
