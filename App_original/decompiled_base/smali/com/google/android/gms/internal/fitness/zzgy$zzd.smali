.class public abstract Lcom/google/android/gms/internal/fitness/zzgy$zzd;
.super Lcom/google/android/gms/internal/fitness/zzgy;
.source "com.google.android.gms:play-services-fitness@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/fitness/zzim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fitness/zzgy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/fitness/zzgy$zzd<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/fitness/zzgy<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/fitness/zzim;"
    }
.end annotation


# instance fields
.field protected zzya:Lcom/google/android/gms/internal/fitness/zzgt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/fitness/zzgt<",
            "Lcom/google/android/gms/internal/fitness/zzgy$zzc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/fitness/zzgy;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/fitness/zzgt;->zzbj()Lcom/google/android/gms/internal/fitness/zzgt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fitness/zzgy$zzd;->zzya:Lcom/google/android/gms/internal/fitness/zzgt;

    return-void
.end method
