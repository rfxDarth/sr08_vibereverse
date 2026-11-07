.class Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;
.super Ljava/lang/Object;
.source "HeartrateTestActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->OnClicktvAlarmStartTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 4

    .line 134
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvAlarmStartTime:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%1$02d:%2$02d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStarthour(I)V

    .line 136
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$2;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setStartminute(I)V

    return-void
.end method
