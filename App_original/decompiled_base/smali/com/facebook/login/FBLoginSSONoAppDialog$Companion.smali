.class public final Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;
.super Ljava/lang/Object;
.source "FBLoginSSONoAppDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/FBLoginSSONoAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;",
        "",
        "()V",
        "ARG_FB4A_OUTDATED",
        "",
        "TAG",
        "newInstance",
        "Lcom/facebook/login/FBLoginSSONoAppDialog;",
        "fb4aOutdated",
        "",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;ZILjava/lang/Object;)Lcom/facebook/login/FBLoginSSONoAppDialog;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;->newInstance(Z)Lcom/facebook/login/FBLoginSSONoAppDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(Z)Lcom/facebook/login/FBLoginSSONoAppDialog;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 46
    new-instance v0, Lcom/facebook/login/FBLoginSSONoAppDialog;

    invoke-direct {v0}, Lcom/facebook/login/FBLoginSSONoAppDialog;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "fb4a_outdated"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/facebook/login/FBLoginSSONoAppDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
