.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$3;
.super Ljava/lang/Object;
.source "AlarmPillActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->OnClicktvAlarmEndTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 5

    .line 128
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    iget-object p3, p3, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->tvAlarmEndTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "%1$02d:%2$02d"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    invoke-static {p3}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndhour(I)V

    .line 130
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity$3;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmPillActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setEndminute(I)V

    return-void
.end method
