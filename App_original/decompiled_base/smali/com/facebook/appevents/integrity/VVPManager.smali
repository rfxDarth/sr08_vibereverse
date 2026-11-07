.class public final Lcom/facebook/appevents/integrity/VVPManager;
.super Ljava/lang/Object;
.source "VVPManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;,
        Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0002?@B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010!\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008#J\u0017\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'H\u0000\u00a2\u0006\u0002\u0008(J\u0008\u0010)\u001a\u00020\"H\u0007J\u0008\u0010*\u001a\u00020\"H\u0007J\u0008\u0010+\u001a\u00020 H\u0007J\r\u0010,\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008-J\u001a\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020\'2\u0006\u00101\u001a\u00020\u0004H\u0002J\u0017\u00102\u001a\u0004\u0018\u00010\u001b2\u0006\u00103\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u00084J\u0018\u00105\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00062\u0006\u00100\u001a\u00020\'H\u0002J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00020%072\u0006\u00100\u001a\u00020\'H\u0002J\u0016\u00108\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u00100\u001a\u00020\'H\u0002J\u001a\u00109\u001a\u00020\"2\u0006\u0010:\u001a\u00020\u00042\u0008\u0010;\u001a\u0004\u0018\u00010<H\u0007J\u0015\u0010=\u001a\u00020\"2\u0006\u0010;\u001a\u00020<H\u0000\u00a2\u0006\u0002\u0008>R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\"\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/facebook/appevents/integrity/VVPManager;",
        "",
        "()V",
        "CONTENTS_KEY",
        "",
        "CONTENT_ID_SANITIZE_KEYS",
        "",
        "ENABLED_KEY",
        "EVENT_NAME_SENTINEL",
        "IN_SCOPE_EVENT_NAMES_KEY",
        "IS_SHADOW_ENABLED_KEY",
        "KEY_NEGATIVE_REGEX_KEY",
        "KEY_REGEX_KEY",
        "PLACE_CUSTOM_DATA",
        "",
        "PLACE_EVENT_NAME",
        "PLACE_KEY",
        "RULES_KEY",
        "SANITIZED_VALUE",
        "STANDARD_PARAMS_KEY",
        "VALUE_REGEX_KEY",
        "VP_RP",
        "VP_RP_EV",
        "VVP_IS_APPLIED_KEY",
        "VVP_IS_APPLIED_VALUE",
        "VVP_METADATA_KEY",
        "<set-?>",
        "Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;",
        "config",
        "getConfig$facebook_core_release",
        "()Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;",
        "enabled",
        "",
        "clearForTests",
        "",
        "clearForTests$facebook_core_release",
        "compileRule",
        "Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;",
        "ruleObj",
        "Lorg/json/JSONObject;",
        "compileRule$facebook_core_release",
        "disable",
        "enable",
        "isEnabled",
        "loadConfig",
        "loadConfig$facebook_core_release",
        "optRegex",
        "Ljava/util/regex/Pattern;",
        "obj",
        "key",
        "parseConfig",
        "jsonStr",
        "parseConfig$facebook_core_release",
        "parseInScopeEventNames",
        "parseRules",
        "",
        "parseStandardParams",
        "processParametersForVVP",
        "eventName",
        "parameters",
        "Landroid/os/Bundle;",
        "scrubIdInContentsArray",
        "scrubIdInContentsArray$facebook_core_release",
        "CompiledRule",
        "VVPConfig",
        "facebook-core_release"
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
.field private static final CONTENTS_KEY:Ljava/lang/String; = "fb_content"

.field private static final CONTENT_ID_SANITIZE_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final EVENT_NAME_SENTINEL:Ljava/lang/String; = "1"

.field public static final INSTANCE:Lcom/facebook/appevents/integrity/VVPManager;

.field private static final IN_SCOPE_EVENT_NAMES_KEY:Ljava/lang/String; = "inScopeEventNames"

.field private static final IS_SHADOW_ENABLED_KEY:Ljava/lang/String; = "isShadowEnabled"

.field private static final KEY_NEGATIVE_REGEX_KEY:Ljava/lang/String; = "keyNegativeRegex"

.field private static final KEY_REGEX_KEY:Ljava/lang/String; = "keyRegex"

.field public static final PLACE_CUSTOM_DATA:I = 0x1

.field public static final PLACE_EVENT_NAME:I = 0x3

.field private static final PLACE_KEY:Ljava/lang/String; = "place"

.field private static final RULES_KEY:Ljava/lang/String; = "rules"

.field private static final SANITIZED_VALUE:Ljava/lang/String; = "_removed_"

.field private static final STANDARD_PARAMS_KEY:Ljava/lang/String; = "standardParams"

.field private static final VALUE_REGEX_KEY:Ljava/lang/String; = "valueRegex"

.field private static final VP_RP:Ljava/lang/String; = "vp_rp"

.field private static final VP_RP_EV:Ljava/lang/String; = "vp_rp_ev"

.field private static final VVP_IS_APPLIED_KEY:Ljava/lang/String; = "vvp"

.field private static final VVP_IS_APPLIED_VALUE:Ljava/lang/String; = "1"

.field private static final VVP_METADATA_KEY:Ljava/lang/String; = "vvp_md"

.field private static volatile config:Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;

.field private static enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/integrity/VVPManager;

    invoke-direct {v0}, Lcom/facebook/appevents/integrity/VVPManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/integrity/VVPManager;->INSTANCE:Lcom/facebook/appevents/integrity/VVPManager;

    .line 66
    const-string v0, "fb_content_ids"

    const-string v1, "fb_content_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/integrity/VVPManager;->CONTENT_ID_SANITIZE_KEYS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final disable()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/integrity/VVPManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 116
    :try_start_0
    sput-boolean v1, Lcom/facebook/appevents/integrity/VVPManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 117
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final enable()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/integrity/VVPManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 110
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/integrity/VVPManager;->INSTANCE:Lcom/facebook/appevents/integrity/VVPManager;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/facebook/appevents/integrity/VVPManager;->enabled:Z

    .line 111
    invoke-virtual {v1}, Lcom/facebook/appevents/integrity/VVPManager;->loadConfig$facebook_core_release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 112
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final isEnabled()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/facebook/appevents/integrity/VVPManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 119
    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/facebook/appevents/integrity/VVPManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method

.method private final optRegex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 192
    const-string p2, "raw"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    const/4 p2, 0x2

    .line 197
    :try_start_1
    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catch_0
    :cond_3
    :goto_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 196
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final parseInScopeEventNames(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "inScopeEventNames"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 220
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 223
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 224
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 226
    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    const-string v5, "s"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 228
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_4
    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :cond_5
    :goto_1
    return-object v2

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private final parseRules(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 160
    :cond_0
    :try_start_0
    const-string v0, "rules"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 161
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 162
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 163
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/appevents/integrity/VVPManager;->compileRule$facebook_core_release(Lorg/json/JSONObject;)Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 165
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 167
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final parseStandardParams(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 205
    :cond_0
    :try_start_0
    const-string v0, "standardParams"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 206
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 212
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_3
    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final processParametersForVVP(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/integrity/VVPManager;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_8

    :cond_0
    :try_start_0
    const-string v3, "eventName"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-boolean v3, Lcom/facebook/appevents/integrity/VVPManager;->enabled:Z

    if-eqz v3, :cond_17

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    .line 247
    :cond_1
    sget-object v3, Lcom/facebook/appevents/integrity/VVPManager;->config:Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;

    if-nez v3, :cond_2

    goto/16 :goto_8

    .line 250
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;->getInScopeEventNames()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 251
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_8

    .line 255
    :cond_3
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 256
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 259
    invoke-virtual {v3}, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;->getRules()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "parameters.keySet()"

    const-string v11, "1"

    if-eqz v9, :cond_e

    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;

    .line 260
    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getPlace()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_7

    const/4 v10, 0x3

    if-eq v12, v10, :cond_5

    goto :goto_0

    .line 264
    :cond_5
    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getKeyRegex()Ljava/util/regex/Pattern;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getKeyRegex()Ljava/util/regex/Pattern;

    move-result-object v10

    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 265
    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getKeyNegativeRegex()Ljava/util/regex/Pattern;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object v10, v0

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_4

    .line 269
    invoke-virtual {v5, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_0

    .line 278
    :cond_7
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 279
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_9

    goto :goto_2

    .line 280
    :cond_9
    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getKeyRegex()Ljava/util/regex/Pattern;

    move-result-object v14

    if-eqz v14, :cond_a

    move-object v15, v11

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    goto :goto_3

    :cond_a
    const/4 v14, 0x1

    .line 281
    :goto_3
    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getKeyNegativeRegex()Ljava/util/regex/Pattern;

    move-result-object v15

    if-eqz v15, :cond_b

    move-object v7, v11

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v15, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    if-eqz v14, :cond_c

    if-nez v7, :cond_c

    const/4 v7, 0x1

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    .line 283
    :goto_5
    invoke-virtual {v9}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;->getValueRegex()Ljava/util/regex/Pattern;

    move-result-object v14

    if-eqz v14, :cond_d

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    goto :goto_6

    :cond_d
    const/4 v12, 0x1

    :goto_6
    if-eqz v7, :cond_8

    if-eqz v12, :cond_8

    .line 286
    invoke-virtual {v4, v11}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_2

    :cond_e
    if-nez v8, :cond_f

    goto/16 :goto_8

    .line 301
    :cond_f
    invoke-virtual {v3}, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;->isShadowEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v3}, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;->getStandardParams()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 302
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 304
    invoke-virtual {v3}, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;->getStandardParams()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_7

    .line 307
    :cond_10
    sget-object v7, Lcom/facebook/appevents/integrity/VVPManager;->CONTENT_ID_SANITIZE_KEYS:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 310
    const-string v7, "_removed_"

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 312
    :cond_11
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_7

    .line 322
    :cond_12
    sget-object v0, Lcom/facebook/appevents/integrity/VVPManager;->INSTANCE:Lcom/facebook/appevents/integrity/VVPManager;

    invoke-virtual {v0, v1}, Lcom/facebook/appevents/integrity/VVPManager;->scrubIdInContentsArray$facebook_core_release(Landroid/os/Bundle;)V

    .line 325
    :cond_13
    const-string v0, "vvp"

    invoke-virtual {v1, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 331
    :cond_14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 332
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 333
    const-string v3, "vp_rp"

    new-instance v6, Lorg/json/JSONArray;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    :cond_15
    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 336
    const-string v3, "vp_rp_ev"

    new-instance v4, Lorg/json/JSONArray;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    :cond_16
    const-string v3, "vvp_md"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_17
    :goto_8
    return-void

    :catchall_0
    move-exception v0

    .line 340
    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clearForTests$facebook_core_release()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 368
    :try_start_0
    sput-boolean v0, Lcom/facebook/appevents/integrity/VVPManager;->enabled:Z

    const/4 v0, 0x0

    .line 369
    sput-object v0, Lcom/facebook/appevents/integrity/VVPManager;->config:Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 370
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final compileRule$facebook_core_release(Lorg/json/JSONObject;)Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;
    .locals 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "ruleObj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    const-string v0, "place"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return-object v1

    .line 176
    :cond_1
    const-string v2, "keyRegex"

    invoke-direct {p0, p1, v2}, Lcom/facebook/appevents/integrity/VVPManager;->optRegex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 177
    const-string v3, "keyNegativeRegex"

    invoke-direct {p0, p1, v3}, Lcom/facebook/appevents/integrity/VVPManager;->optRegex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 178
    const-string v4, "valueRegex"

    invoke-direct {p0, p1, v4}, Lcom/facebook/appevents/integrity/VVPManager;->optRegex(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    return-object v1

    .line 184
    :cond_2
    new-instance v4, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;

    invoke-direct {v4, v0, v2, v3, p1}, Lcom/facebook/appevents/integrity/VVPManager$CompiledRule;-><init>(ILjava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final getConfig$facebook_core_release()Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/integrity/VVPManager;->config:Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final loadConfig$facebook_core_release()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getVvpConfig()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 126
    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/integrity/VVPManager;->parseConfig$facebook_core_release(Ljava/lang/String;)Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;

    move-result-object v1

    .line 125
    :cond_3
    :goto_1
    sput-object v1, Lcom/facebook/appevents/integrity/VVPManager;->config:Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 132
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final parseConfig$facebook_core_release(Ljava/lang/String;)Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;
    .locals 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "jsonStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    const-string p1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 141
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/appevents/integrity/VVPManager;->parseRules(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 146
    :cond_2
    new-instance v2, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;

    .line 148
    invoke-direct {p0, v0}, Lcom/facebook/appevents/integrity/VVPManager;->parseStandardParams(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v3

    .line 149
    invoke-direct {p0, v0}, Lcom/facebook/appevents/integrity/VVPManager;->parseInScopeEventNames(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v4

    .line 152
    const-string v5, "isShadowEnabled"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    invoke-direct {v2, p1, v3, v4, v0}, Lcom/facebook/appevents/integrity/VVPManager$VVPConfig;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    :catch_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 136
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final scrubIdInContentsArray$facebook_core_release(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "id"

    const-string v1, "fb_content"

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v2, "parameters"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_2

    .line 350
    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 354
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 356
    const-string v5, "_removed_"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v5, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    .line 362
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 364
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
