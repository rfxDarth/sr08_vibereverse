.class Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->init()V
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

    .line 40
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 43
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$000(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$000(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$102(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;Landroid/view/WindowManager;)Landroid/view/WindowManager;

    .line 46
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$000(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$300(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$202(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;Landroid/view/View;)Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$400(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    const/16 v5, 0x8

    .line 51
    :goto_0
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x3e8

    const/4 v6, -0x3

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 59
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 63
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object v1, v0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$100(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v2}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/github/florent37/singledateandtimepicker/R$id;->bottom_sheet_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$1;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$1;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-static {v0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->access$200(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;

    invoke-direct {v1, p0}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$2;-><init>(Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method
