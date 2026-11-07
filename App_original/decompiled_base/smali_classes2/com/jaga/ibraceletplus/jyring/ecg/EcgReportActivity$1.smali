.class Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1;
.super Ljava/lang/Object;
.source "EcgReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1$1;

    invoke-direct {v1, p0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1$1;-><init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
