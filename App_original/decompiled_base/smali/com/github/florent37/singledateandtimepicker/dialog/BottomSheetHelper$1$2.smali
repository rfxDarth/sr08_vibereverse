.class Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    iget-object v0, v0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    iget-object v0, v0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    iget-object v0, v0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    iget-object v1, v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;->onLoaded(Landroid/view/View;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    iget-object v0, v0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$600(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V

    const/4 v0, 0x0

    return v0
.end method
