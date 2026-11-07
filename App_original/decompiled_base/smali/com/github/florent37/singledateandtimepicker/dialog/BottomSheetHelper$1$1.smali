.class Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$1;
.super Ljava/lang/Object;
.source "BottomSheetHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 70
    iput-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1$1;->this$1:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;

    iget-object p1, p1, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper$1;->this$0:Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;

    invoke-virtual {p1}, Lcom/github/florent37/singledateandtimepicker/dialog/BottomSheetHelper;->hide()V

    return-void
.end method
