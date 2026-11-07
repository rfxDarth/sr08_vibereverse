.class Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$1;
.super Ljava/lang/Object;
.source "FragmentSport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->OnClickbStart(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    :try_start_0
    iget-object p1, p0, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport$1;->this$0:Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;

    invoke-static {p1}, Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;->access$000(Lcom/jaga/ibraceletplus/jyring/main/FragmentSport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
