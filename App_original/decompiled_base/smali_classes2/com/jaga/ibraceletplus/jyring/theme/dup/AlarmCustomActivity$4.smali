.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity$4;
.super Ljava/lang/Object;
.source "AlarmCustomActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;->OnClicktvPeriod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChoice([Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;->tvPeriod:Landroid/widget/TextView;

    sget-object v1, Lcom/jaga/ibraceletplus/jyring/main/DupMainActivity;->week:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekText([Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekCode([Z)I

    move-result p1

    .line 149
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;

    invoke-static {v0}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmCustomActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setWeekly(I)V

    return-void
.end method
