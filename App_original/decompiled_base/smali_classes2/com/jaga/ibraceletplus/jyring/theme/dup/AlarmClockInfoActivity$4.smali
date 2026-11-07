.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$4;
.super Ljava/lang/Object;
.source "AlarmClockInfoActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->OnClicktvPeriod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChoice([Z)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->tvPeriod:Landroid/widget/TextView;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekText([Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekCode([Z)I

    move-result p1

    .line 142
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmClockInfoActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    return-void
.end method
