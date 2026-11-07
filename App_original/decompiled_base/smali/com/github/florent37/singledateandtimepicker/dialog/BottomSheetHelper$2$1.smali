.class Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;

    iget-object p1, p1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;

    iget-object p1, p1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;

    iget-object p1, p1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;->onClose()V

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;

    iget-object p1, p1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$2;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$700(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V

    return-void
.end method
