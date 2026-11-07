.class Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$16;
.super Ljava/lang/Object;
.source "FragmentMain_ViewBinding.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;)V
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

    .line 271
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$16;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$16;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain_ViewBinding$16;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jaga/ibraceletplus/jyring/main/FragmentMain;->OnItemClickGvMain(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
