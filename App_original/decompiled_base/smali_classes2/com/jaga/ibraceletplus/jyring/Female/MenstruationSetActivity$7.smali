.class Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;
.super Ljava/lang/Object;
.source "MenstruationSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->setMenstruationStart(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

.field final synthetic val$npDay:Landroid/widget/NumberPicker;

.field final synthetic val$npMonth:Landroid/widget/NumberPicker;

.field final synthetic val$npYear:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V
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

    .line 270
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->val$npYear:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->val$npMonth:Landroid/widget/NumberPicker;

    iput-object p4, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->val$npDay:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 273
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->val$npYear:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Landroid/widget/NumberPicker;->getValue()I

    move-result p1

    .line 274
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->val$npMonth:Landroid/widget/NumberPicker;

    invoke-virtual {p2}, Landroid/widget/NumberPicker;->getValue()I

    move-result p2

    .line 275
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->val$npDay:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

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

    invoke-static {v1, p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$202(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$300(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity$7;->this$0:Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;

    invoke-static {p2}, Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;->access$200(Lcom/jaga/ibraceletplus/jyring/Female/MenstruationSetActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
