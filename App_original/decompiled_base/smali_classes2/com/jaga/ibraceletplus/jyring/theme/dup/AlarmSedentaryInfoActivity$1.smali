.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$1;
.super Ljava/lang/Object;
.source "AlarmSedentaryInfoActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->OnClicktvSnooze()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 0

    .line 95
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->tvSnooze:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmSedentaryInfoActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    return-void
.end method
