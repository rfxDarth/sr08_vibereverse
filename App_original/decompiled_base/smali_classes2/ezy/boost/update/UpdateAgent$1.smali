.class Lezy/boost/update/UpdateAgent$1;
.super Landroid/os/AsyncTask;
.source "UpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lezy/boost/update/UpdateAgent;->doCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lezy/boost/update/UpdateAgent;


# direct methods
.method constructor <init>(Lezy/boost/update/UpdateAgent;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateAgent$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    .line 203
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    new-instance v0, Lezy/boost/update/UpdateChecker;

    iget-object v1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-static {v1}, Lezy/boost/update/UpdateAgent;->access$200(Lezy/boost/update/UpdateAgent;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lezy/boost/update/UpdateChecker;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lezy/boost/update/UpdateAgent;->access$102(Lezy/boost/update/UpdateAgent;Lezy/boost/update/IUpdateChecker;)Lezy/boost/update/IUpdateChecker;

    .line 204
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-static {p1}, Lezy/boost/update/UpdateAgent;->access$100(Lezy/boost/update/UpdateAgent;)Lezy/boost/update/IUpdateChecker;

    move-result-object p1

    iget-object v0, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-static {v0}, Lezy/boost/update/UpdateAgent;->access$300(Lezy/boost/update/UpdateAgent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lezy/boost/update/IUpdateChecker;->check(Lezy/boost/update/ICheckAgent;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lezy/boost/update/UpdateAgent$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lezy/boost/update/UpdateAgent$1;->this$0:Lezy/boost/update/UpdateAgent;

    invoke-virtual {p1}, Lezy/boost/update/UpdateAgent;->doCheckFinish()V

    return-void
.end method
