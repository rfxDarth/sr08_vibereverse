.class Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;
.super Ljava/lang/Object;
.source "DialogPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->showMulti([Ljava/lang/String;[Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

.field final synthetic val$choice:[Z


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;[Z)V
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

    .line 196
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;->val$choice:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;->this$0:Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;->access$200(Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker;)Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;

    move-result-object p1

    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$7;->val$choice:[Z

    invoke-interface {p1, p2}, Lcom/jaga/ibraceletplus/jyring/widget/DialogPicker$OnMultiListener;->getChoice([Z)V

    return-void
.end method
