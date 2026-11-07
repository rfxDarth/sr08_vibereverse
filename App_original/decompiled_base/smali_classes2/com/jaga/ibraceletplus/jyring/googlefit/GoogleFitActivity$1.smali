.class Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$1;
.super Ljava/lang/Object;
.source "GoogleFitActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->googleSignin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;


# direct methods
.method constructor <init>(Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity$1;->this$0:Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;

    iget-object v0, v0, Lcom/jaga/ibraceletplus/jyring/googlefit/GoogleFitActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
