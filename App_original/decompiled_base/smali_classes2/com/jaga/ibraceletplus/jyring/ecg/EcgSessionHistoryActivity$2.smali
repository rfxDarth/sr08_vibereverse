.class Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$2;
.super Ljava/lang/Object;
.source "EcgSessionHistoryActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->initData()V
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

    .line 118
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgSessionHistoryActivity;->onIvSyncClick()V

    :cond_0
    return-void
.end method
