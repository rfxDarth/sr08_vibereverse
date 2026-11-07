.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;
.super Ljava/lang/Object;
.source "AlarmClockActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 75
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    const-class p4, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    invoke-virtual {p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide p2

    long-to-int p3, p2

    .line 77
    const-string p2, "id"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
