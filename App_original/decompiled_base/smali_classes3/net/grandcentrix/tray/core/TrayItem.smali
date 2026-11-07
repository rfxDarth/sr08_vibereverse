.class public Lnet/grandcentrix/tray/core/TrayItem;
.super Ljava/lang/Object;
.source "TrayItem.java"


# instance fields
.field private final mCreated:Ljava/util/Date;

.field private final mKey:Ljava/lang/String;

.field private final mMigratedKey:Ljava/lang/String;

.field private final mModule:Ljava/lang/String;

.field private final mUpdated:Ljava/util/Date;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p5, p0, Lnet/grandcentrix/tray/core/TrayItem;->mCreated:Ljava/util/Date;

    .line 47
    iput-object p2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mKey:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lnet/grandcentrix/tray/core/TrayItem;->mModule:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lnet/grandcentrix/tray/core/TrayItem;->mUpdated:Ljava/util/Date;

    .line 50
    iput-object p4, p0, Lnet/grandcentrix/tray/core/TrayItem;->mValue:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lnet/grandcentrix/tray/core/TrayItem;->mMigratedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public created()Ljava/util/Date;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mCreated:Ljava/util/Date;

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public migratedKey()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mMigratedKey:Ljava/lang/String;

    return-object v0
.end method

.method public module()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mModule:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss dd.MM.yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mKey:Ljava/lang/String;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mValue:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", module: "

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mModule:Ljava/lang/String;

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", created: "

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mCreated:Ljava/util/Date;

    .line 84
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", updated: "

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/grandcentrix/tray/core/TrayItem;->mUpdated:Ljava/util/Date;

    .line 86
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", migratedKey: "

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mMigratedKey:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    .line 89
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTime()Ljava/util/Date;
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lnet/grandcentrix/tray/core/TrayItem;->mValue:Ljava/lang/String;

    return-object v0
.end method
