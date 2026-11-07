.class Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$9;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FragmentPerson_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;-><init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;

.field final synthetic val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;)V
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

    .line 129
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$9;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding;

    iput-object p2, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$9;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson_ViewBinding$9;->val$target:Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;

    invoke-virtual {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentPerson;->OnClicktvAbout()V

    return-void
.end method
