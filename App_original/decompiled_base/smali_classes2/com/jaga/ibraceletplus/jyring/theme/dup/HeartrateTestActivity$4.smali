.class Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;
.super Ljava/lang/Object;
.source "HeartrateTestActivity.java"

# interfaces
.implements Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->onViewClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPicker(III)V
    .locals 0

    .line 186
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    iget-object p2, p2, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->tvPeriod:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;->val$items:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity;)Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;

    move-result-object p2

    iget-object p3, p0, Lcom/jaga/ibraceletplus/jyring/theme/dup/HeartrateTestActivity$4;->val$items:[Ljava/lang/String;

    aget-object p1, p3, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->setSnooze_repeat(I)V

    return-void
.end method
