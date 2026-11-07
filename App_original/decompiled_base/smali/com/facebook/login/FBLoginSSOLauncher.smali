.class public final Lcom/facebook/login/FBLoginSSOLauncher;
.super Ljava/lang/Object;
.source "FBLoginSSOLauncher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/FBLoginSSOLauncher$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 +2\u00020\u0001:\u0001+B+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0014H\u0002J\u0008\u0010 \u001a\u00020\u0008H\u0002J\u0018\u0010!\u001a\u00020\u00082\u000e\u0008\u0002\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0018H\u0007J2\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u00162\u0008\u0010%\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0016H\u0002J\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020*H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\n\u001a\u0004\u0018\u00010\u000b8@@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/facebook/login/FBLoginSSOLauncher;",
        "",
        "activity",
        "Landroidx/activity/ComponentActivity;",
        "callback",
        "Lcom/facebook/FacebookCallback;",
        "Lcom/facebook/login/LoginResult;",
        "showWithoutFBApp",
        "",
        "(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;Z)V",
        "appEventsLogger",
        "Lcom/facebook/appevents/InternalAppEventsLogger;",
        "getAppEventsLogger$facebook_common_release$annotations",
        "()V",
        "getAppEventsLogger$facebook_common_release",
        "()Lcom/facebook/appevents/InternalAppEventsLogger;",
        "setAppEventsLogger$facebook_common_release",
        "(Lcom/facebook/appevents/InternalAppEventsLogger;)V",
        "launcher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "pendingNonce",
        "",
        "pendingPermissions",
        "",
        "pendingRequest",
        "Lcom/facebook/login/LoginClient$Request;",
        "handleActivityResult",
        "",
        "resultCode",
        "",
        "data",
        "isFb4aInstalled",
        "launch",
        "permissions",
        "logSsoEvent",
        "eventName",
        "authLoggerId",
        "extras",
        "Lorg/json/JSONObject;",
        "result",
        "markFromSso",
        "Lcom/facebook/login/LoginClient$Result;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/facebook/login/FBLoginSSOLauncher$Companion;

.field private static final SSO_DISMISSED_EXTRA:Ljava/lang/String; = "sso_dismissed"

.field private static final TAG:Ljava/lang/String; = "FBLoginSSOLauncher"

.field private static pendingSsoContext:Ljava/lang/String;


# instance fields
.field private final activity:Landroidx/activity/ComponentActivity;

.field private appEventsLogger:Lcom/facebook/appevents/InternalAppEventsLogger;

.field private final callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;"
        }
    .end annotation
.end field

.field private final launcher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private pendingNonce:Ljava/lang/String;

.field private pendingPermissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pendingRequest:Lcom/facebook/login/LoginClient$Request;

.field private final showWithoutFBApp:Z


# direct methods
.method public static synthetic $r8$lambda$dJgOmWnrqyzEI4TXHRYxN0XbofA(Lcom/facebook/login/FBLoginSSOLauncher;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/login/FBLoginSSOLauncher;->_init_$lambda$0(Lcom/facebook/login/FBLoginSSOLauncher;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/login/FBLoginSSOLauncher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/login/FBLoginSSOLauncher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/login/FBLoginSSOLauncher;->Companion:Lcom/facebook/login/FBLoginSSOLauncher$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;-><init>(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;-><init>(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    .line 52
    iput-object p2, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    .line 53
    iput-boolean p3, p0, Lcom/facebook/login/FBLoginSSOLauncher;->showWithoutFBApp:Z

    .line 58
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    iput-object p2, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingPermissions:Ljava/util/Collection;

    .line 70
    new-instance p2, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast p2, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance p3, Lcom/facebook/login/FBLoginSSOLauncher$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/facebook/login/FBLoginSSOLauncher$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/login/FBLoginSSOLauncher;)V

    invoke-virtual {p1, p2, p3}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    const-string p2, "activity.registerForActi\u2026e, result.data)\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 50
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/FBLoginSSOLauncher;-><init>(Landroidx/activity/ComponentActivity;Lcom/facebook/FacebookCallback;Z)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/facebook/login/FBLoginSSOLauncher;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/facebook/login/FBLoginSSOLauncher;->handleActivityResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/facebook/login/FBLoginSSOLauncher;)Landroidx/activity/ComponentActivity;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    return-object p0
.end method

.method public static final synthetic access$getPendingPermissions$p(Lcom/facebook/login/FBLoginSSOLauncher;)Ljava/util/Collection;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingPermissions:Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic access$getPendingSsoContext$cp()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingSsoContext:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setPendingSsoContext$cp(Ljava/lang/String;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingSsoContext:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getAppEventsLogger$facebook_common_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final getPendingSsoContext()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/facebook/login/FBLoginSSOLauncher;->Companion:Lcom/facebook/login/FBLoginSSOLauncher$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/FBLoginSSOLauncher$Companion;->getPendingSsoContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final handleActivityResult(ILandroid/content/Intent;)V
    .locals 14

    move-object/from16 v2, p2

    .line 181
    iget-object v3, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 182
    iget-object v4, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingNonce:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 185
    const-string v6, "sso_dismissed"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 186
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "handleActivityResult: resultCode="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sso_dismissed="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "FBLoginSSOLauncher"

    invoke-static {v8, v6}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    .line 188
    const-string v0, "SSO popup dismissed by user (not a login cancellation)"

    invoke-static {v8, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v9

    .line 190
    :goto_1
    sget-object v0, Lcom/facebook/login/LoginClient$Result$Code;->CANCEL:Lcom/facebook/login/LoginClient$Result$Code;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 189
    const-string v2, "fb_mobile_sso_dismissed"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/facebook/FacebookCallback;->onCancel()V

    .line 192
    :cond_2
    iput-object v9, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingNonce:Ljava/lang/String;

    .line 193
    iput-object v9, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    return-void

    .line 197
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 199
    const-string v11, "com.facebook.LoginFragment:Result"

    const/4 v12, -0x1

    if-ne p1, v12, :cond_a

    if-eqz v2, :cond_a

    .line 200
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 202
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "error_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_4
    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v9

    .line 205
    :goto_2
    const-string v5, "error_message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, "error_description"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_6
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-nez v5, :cond_8

    .line 211
    :try_start_0
    sget-object v1, Lcom/facebook/login/LoginMethodHandler;->Companion:Lcom/facebook/login/LoginMethodHandler$Companion;

    if-eqz v3, :cond_7

    .line 212
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v9

    :goto_3
    check-cast v2, Ljava/util/Collection;

    .line 214
    sget-object v5, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    .line 215
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {v1, v2, v0, v5, v6}, Lcom/facebook/login/LoginMethodHandler$Companion;->createAccessTokenFromWebBundle(Ljava/util/Collection;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v1

    .line 216
    sget-object v2, Lcom/facebook/login/LoginMethodHandler;->Companion:Lcom/facebook/login/LoginMethodHandler$Companion;

    invoke-virtual {v2, v0, v4}, Lcom/facebook/login/LoginMethodHandler$Companion;->createAuthenticationTokenFromWebBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/facebook/AuthenticationToken;

    move-result-object v0

    .line 218
    sget-object v2, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    invoke-virtual {v2, v3, v1, v0}, Lcom/facebook/login/LoginClient$Result$Companion;->createCompositeTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;Lcom/facebook/AuthenticationToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lcom/facebook/login/FBLoginSSOLauncher;->markFromSso(Lcom/facebook/login/LoginClient$Result;)V

    .line 221
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 222
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v12, v10, v1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v13, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v13

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult$default(Lcom/facebook/login/LoginClient$Result$Companion;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Lcom/facebook/login/FBLoginSSOLauncher;->markFromSso(Lcom/facebook/login/LoginClient$Result;)V

    .line 227
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v12, v10, v1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    goto :goto_4

    .line 233
    :cond_8
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    invoke-virtual {v0, v3, v1, v5, v2}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0}, Lcom/facebook/login/FBLoginSSOLauncher;->markFromSso(Lcom/facebook/login/LoginClient$Result;)V

    .line 235
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v12, v10, v1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    goto :goto_4

    .line 241
    :cond_9
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v3

    const-string v3, "Unexpected null extras from SSO activity."

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Result$Companion;->createErrorResult$default(Lcom/facebook/login/LoginClient$Result$Companion;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 243
    invoke-direct {p0, v0}, Lcom/facebook/login/FBLoginSSOLauncher;->markFromSso(Lcom/facebook/login/LoginClient$Result;)V

    .line 244
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 245
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v12, v10, v1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    goto :goto_4

    :cond_a
    move-object v1, v3

    .line 249
    const-string v0, "Login cancelled (not SSO dismiss \u2014 OAuth dialog was shown)"

    invoke-static {v8, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/facebook/login/LoginClient$Result;->Companion:Lcom/facebook/login/LoginClient$Result$Companion;

    const-string v2, "Operation canceled"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result$Companion;->createCancelResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0}, Lcom/facebook/login/FBLoginSSOLauncher;->markFromSso(Lcom/facebook/login/LoginClient$Result;)V

    .line 252
    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    sget-object v0, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->callback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v5, v10, v1}, Lcom/facebook/login/LoginManager;->onActivityResult(ILandroid/content/Intent;Lcom/facebook/FacebookCallback;)Z

    .line 257
    :goto_4
    iput-object v9, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingNonce:Ljava/lang/String;

    .line 258
    iput-object v9, p0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method

.method private final isFb4aInstalled()Z
    .locals 3

    const/4 v0, 0x0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    invoke-virtual {v1}, Landroidx/activity/ComponentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.facebook.katana"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public static synthetic launch$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/util/Collection;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/FBLoginSSOLauncher;->launch(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method private final logSsoEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 269
    const-string v1, ""

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const-string v3, "0_auth_logger_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p4

    .line 270
    :goto_1
    const-string v3, "2_result"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v2, "3_method"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v2, "4_error_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "5_error_message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 274
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v1

    :cond_3
    const-string v3, "6_extras"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "7_challenge"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | auth_logger_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    move-object p2, v1

    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string p2, " | result="

    .line 276
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_5

    move-object p4, v1

    :cond_5
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string p2, " | extras="

    .line 276
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_7

    .line 279
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, p2

    .line 276
    :cond_7
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FBLoginSSOLauncher"

    invoke-static {p3, p2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/facebook/login/FBLoginSSOLauncher;->getAppEventsLogger$facebook_common_release()Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method

.method static synthetic logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 261
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private final markFromSso(Lcom/facebook/login/LoginClient$Result;)V
    .locals 3

    .line 284
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 285
    :cond_1
    const-string v1, "from_sso"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iput-object v0, p1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    return-void
.end method

.method public static final setPendingSsoContext$facebook_common_release(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/facebook/login/FBLoginSSOLauncher;->Companion:Lcom/facebook/login/FBLoginSSOLauncher$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/login/FBLoginSSOLauncher$Companion;->setPendingSsoContext$facebook_common_release(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAppEventsLogger$facebook_common_release()Lcom/facebook/appevents/InternalAppEventsLogger;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/facebook/login/FBLoginSSOLauncher;->appEventsLogger:Lcom/facebook/appevents/InternalAppEventsLogger;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/facebook/appevents/InternalAppEventsLogger;

    iget-object v1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    check-cast v1, Landroid/content/Context;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/InternalAppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/FBLoginSSOLauncher;->appEventsLogger:Lcom/facebook/appevents/InternalAppEventsLogger;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/FBLoginSSOLauncher;->appEventsLogger:Lcom/facebook/appevents/InternalAppEventsLogger;

    return-object v0
.end method

.method public final launch()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/facebook/login/FBLoginSSOLauncher;->launch$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/util/Collection;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final launch(Ljava/util/Collection;)Z
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v8, "permissions"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object v7, v0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingPermissions:Ljava/util/Collection;

    .line 88
    sget-object v1, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    invoke-virtual {v1}, Lcom/facebook/AccessToken$Companion;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return v9

    .line 91
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "randomUUID().toString()"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "auth_logger_id: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FBLoginSSOLauncher"

    invoke-static {v3, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v26, ","

    move-object/from16 v3, v26

    check-cast v3, Ljava/lang/CharSequence;

    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    invoke-static {v3, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 93
    const-string v1, "fb_mobile_sso_launch_attempted"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->LoginSSO:Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v0}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v0

    const-string v27, "non_sso_login_sso_not_shown"

    const-string v1, "reason"

    if-nez v0, :cond_1

    .line 96
    sput-object v27, Lcom/facebook/login/FBLoginSSOLauncher;->pendingSsoContext:Ljava/lang/String;

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "gk_disabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 97
    const-string v1, "fb_mobile_sso_not_shown"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return v9

    :cond_1
    move-object/from16 v0, p0

    .line 101
    new-instance v3, Lcom/facebook/login/LoginConfiguration;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v7, v5, v4, v5}, Lcom/facebook/login/LoginConfiguration;-><init>(Ljava/util/Collection;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    sget-object v4, Lcom/facebook/login/LoginManager;->Companion:Lcom/facebook/login/LoginManager$Companion;

    invoke-virtual {v4}, Lcom/facebook/login/LoginManager$Companion;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v4

    move-object v6, v10

    .line 105
    new-instance v10, Lcom/facebook/login/LoginClient$Request;

    .line 106
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v11

    .line 107
    invoke-virtual {v3}, Lcom/facebook/login/LoginConfiguration;->getPermissions()Ljava/util/Set;

    move-result-object v12

    .line 108
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v13

    .line 109
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getAuthType()Ljava/lang/String;

    move-result-object v14

    .line 110
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v15

    .line 112
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getLoginTargetApp()Lcom/facebook/login/LoginTargetApp;

    move-result-object v17

    .line 113
    invoke-virtual {v3}, Lcom/facebook/login/LoginConfiguration;->getNonce()Ljava/lang/String;

    move-result-object v18

    .line 114
    invoke-static {}, Lcom/facebook/FacebookSdk;->getRedirectURI()Ljava/lang/String;

    move-result-object v22

    .line 115
    invoke-static {}, Lcom/facebook/FacebookSdk;->getIntentUriPackageTarget()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x700

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v2

    .line 105
    invoke-direct/range {v10 .. v25}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/LoginBehavior;Ljava/util/Set;Lcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginTargetApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 116
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->isFamilyLogin()Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/facebook/login/LoginClient$Request;->setFamilyLogin(Z)V

    .line 117
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getShouldSkipAccountDeduplication()Z

    move-result v7

    invoke-virtual {v10, v7}, Lcom/facebook/login/LoginClient$Request;->setShouldSkipAccountDeduplication(Z)V

    .line 119
    invoke-virtual {v3}, Lcom/facebook/login/LoginConfiguration;->getNonce()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingNonce:Ljava/lang/String;

    .line 120
    iput-object v10, v0, Lcom/facebook/login/FBLoginSSOLauncher;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 122
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "{\"0_auth_logger_id\":\""

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 125
    iget-object v2, v0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    move-object/from16 v28, v2

    check-cast v28, Landroid/content/Context;

    .line 126
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v29

    .line 127
    invoke-virtual {v3}, Lcom/facebook/login/LoginConfiguration;->getPermissions()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Ljava/util/Collection;

    .line 128
    sget-object v2, Lcom/facebook/login/LoginClient;->Companion:Lcom/facebook/login/LoginClient$Companion;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Companion;->getE2E()Ljava/lang/String;

    move-result-object v31

    .line 131
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v34

    .line 133
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getAuthType()Ljava/lang/String;

    move-result-object v36

    .line 137
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->isFamilyLogin()Z

    move-result v40

    .line 138
    invoke-virtual {v4}, Lcom/facebook/login/LoginManager;->getShouldSkipAccountDeduplication()Z

    move-result v41

    .line 139
    invoke-virtual {v3}, Lcom/facebook/login/LoginConfiguration;->getNonce()Ljava/lang/String;

    move-result-object v42

    .line 142
    invoke-static {}, Lcom/facebook/FacebookSdk;->getRedirectURI()Ljava/lang/String;

    move-result-object v45

    .line 143
    invoke-static {}, Lcom/facebook/FacebookSdk;->getIntentUriPackageTarget()Ljava/lang/String;

    move-result-object v46

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    .line 124
    invoke-static/range {v28 .. v46}, Lcom/facebook/internal/NativeProtocol;->createFBLoginSSOIntents(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/content/Intent;

    .line 145
    iget-object v3, v0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    invoke-virtual {v3}, Landroidx/activity/ComponentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v11, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 147
    const-string v1, "non_sso_login_sso_shown"

    sput-object v1, Lcom/facebook/login/FBLoginSSOLauncher;->pendingSsoContext:Ljava/lang/String;

    .line 148
    invoke-virtual {v10}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "fb_mobile_sso_delegated_to_fb4a"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 149
    iget-object v1, v0, Lcom/facebook/login/FBLoginSSOLauncher;->launcher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v11}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return v7

    .line 154
    :cond_3
    invoke-direct {v0}, Lcom/facebook/login/FBLoginSSOLauncher;->isFb4aInstalled()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "fb4a_outdated"

    goto :goto_0

    :cond_4
    const-string v2, "fb4a_not_installed"

    .line 155
    :goto_0
    iget-boolean v3, v0, Lcom/facebook/login/FBLoginSSOLauncher;->showWithoutFBApp:Z

    if-eqz v3, :cond_7

    .line 156
    iget-object v3, v0, Lcom/facebook/login/FBLoginSSOLauncher;->activity:Landroidx/activity/ComponentActivity;

    instance-of v4, v3, Landroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_5

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    goto :goto_1

    :cond_5
    move-object v3, v5

    :goto_1
    if-nez v3, :cond_6

    return v9

    .line 157
    :cond_6
    sget-object v4, Lcom/facebook/login/FBLoginSSONoAppDialog;->Companion:Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;

    invoke-static {v4, v9, v7, v5}, Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;->newInstance$default(Lcom/facebook/login/FBLoginSSONoAppDialog$Companion;ZILjava/lang/Object;)Lcom/facebook/login/FBLoginSSONoAppDialog;

    move-result-object v4

    .line 158
    new-instance v5, Lcom/facebook/login/FBLoginSSOLauncher$launch$1;

    invoke-direct {v5, v0, v10, v2}, Lcom/facebook/login/FBLoginSSOLauncher$launch$1;-><init>(Lcom/facebook/login/FBLoginSSOLauncher;Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, v5}, Lcom/facebook/login/FBLoginSSONoAppDialog;->setOnContinueListener(Lkotlin/jvm/functions/Function0;)V

    .line 164
    new-instance v5, Lcom/facebook/login/FBLoginSSOLauncher$launch$2;

    invoke-direct {v5, v0, v10}, Lcom/facebook/login/FBLoginSSOLauncher$launch$2;-><init>(Lcom/facebook/login/FBLoginSSOLauncher;Lcom/facebook/login/LoginClient$Request;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, v5}, Lcom/facebook/login/FBLoginSSONoAppDialog;->setOnDismissListener(Lkotlin/jvm/functions/Function0;)V

    .line 168
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v5, "FBLoginSSONoAppDialog"

    invoke-virtual {v4, v3, v5}, Lcom/facebook/login/FBLoginSSONoAppDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v10}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    move-object/from16 v2, v26

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, v1

    .line 169
    const-string v1, "fb_mobile_sso_shown"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return v7

    .line 174
    :cond_7
    invoke-virtual {v10}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 174
    const-string v1, "fb_mobile_sso_not_shown"

    const/4 v4, 0x0

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Lcom/facebook/login/FBLoginSSOLauncher;->logSsoEvent$default(Lcom/facebook/login/FBLoginSSOLauncher;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    .line 176
    sput-object v27, Lcom/facebook/login/FBLoginSSOLauncher;->pendingSsoContext:Ljava/lang/String;

    return v9
.end method

.method public final setAppEventsLogger$facebook_common_release(Lcom/facebook/appevents/InternalAppEventsLogger;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/facebook/login/FBLoginSSOLauncher;->appEventsLogger:Lcom/facebook/appevents/InternalAppEventsLogger;

    return-void
.end method
