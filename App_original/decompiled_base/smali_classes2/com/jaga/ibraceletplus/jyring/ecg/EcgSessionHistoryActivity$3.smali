.class Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "EcgSessionHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 139
    const-string v0, "jring.ECG_PROGRESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    const-string p1, "progress"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    .line 141
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->chProgress:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-static {v2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)Ljava/text/DecimalFormat;

    move-result-object v2

    float-to-double v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->setLastUpdateText(Ljava/lang/CharSequence;)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 143
    const-string/jumbo p1, "state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 145
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-static {p1, v0}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Z)Z

    .line 146
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    iget-object p1, p1, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->srlSync:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 147
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 149
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)V

    return-void

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-static {p1, p2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->access$102(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;Z)Z

    :cond_2
    return-void
.end method
