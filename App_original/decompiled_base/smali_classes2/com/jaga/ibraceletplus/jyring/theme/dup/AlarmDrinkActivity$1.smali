.class Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$1;
.super Ljava/lang/Object;
.source "AlarmDrinkActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->OnClicktvSnooze()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 0

    .line 96
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->tvSnooze:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/AlarmDrinkActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze(I)V

    return-void
.end method
