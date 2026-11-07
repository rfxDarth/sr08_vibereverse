.class Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;
.super Ljava/lang/Object;
.source "PregnancySetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->setDue_date(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

.field final synthetic val$npDay:Landroid/widget/NumberPicker;

.field final synthetic val$npMonth:Landroid/widget/NumberPicker;

.field final synthetic val$npYear:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->val$npYear:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->val$npMonth:Landroid/widget/NumberPicker;

    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->val$npDay:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 187
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->val$npYear:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    .line 188
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->val$npMonth:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    .line 189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->val$npDay:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const-string p1, "%1$04d-%2$02d-%3$02d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->access$002(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->access$100(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity$4;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;->access$000(Lcom/jaga/ibraceletplus/jyring/Female/PregnancySetActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
