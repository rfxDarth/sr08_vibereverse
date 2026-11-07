.class Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->animateBottomSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;


# direct methods
.method constructor <init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$3;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$500(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$Listener;->onOpen()V

    :cond_0
    return-void
.end method
