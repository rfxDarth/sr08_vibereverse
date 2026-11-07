.class Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;
.super Ljava/lang/Object;
.source "EcgHistoryActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 87
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class p5, Lcom/jaga/ibraceletplus/jyring/ecg/EcgReportActivity;

    invoke-direct {p1, p2, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const-string/jumbo p3, "timestamp"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p4

    .line 89
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/ecg/EcgHistoryActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
