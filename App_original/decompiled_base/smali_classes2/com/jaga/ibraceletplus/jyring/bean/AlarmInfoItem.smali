.class public Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;
.super Ljava/lang/Object;
.source "AlarmInfoItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alarm_id:J

.field private enable:I

.field private endDay:I

.field private endMonth:I

.field private endYear:I

.field private endhour:I

.field private endminute:I

.field private fireday:Ljava/lang/String;

.field private hour:I

.field private minute:I

.field private name:Ljava/lang/String;

.field private repeat_hour:I

.field private repeat_schedule:I

.field private repeat_times:I

.field private snooze:I

.field private snooze_repeat:I

.field private startDay:I

.field private startMonth:I

.field private startYear:I

.field private starthour:I

.field private startminute:I

.field private subtype:I

.field private type:I

.field private weekly:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem$1;

    invoke-direct {v0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem$1;-><init>()V

    sput-object v0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->alarm_id:J

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->name:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->fireday:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->hour:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->minute:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->starthour:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startminute:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endhour:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endminute:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_hour:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_times:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->weekly:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->type:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->subtype:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->enable:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze_repeat:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_schedule:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startYear:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startMonth:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startDay:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endYear:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endMonth:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endDay:I

    return-void
.end method

.method public static setAlarm(Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;)Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;
    .locals 4

    .line 35
    new-instance v0, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;

    invoke-direct {v0}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getAlarm_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setAlarm_id(J)V

    .line 37
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setContent(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setHour(I)V

    .line 39
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setMinute(I)V

    .line 40
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getEnable()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableType(I)V

    .line 41
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getSnooze_repeat()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setSingle(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->getWeekly()I

    move-result p0

    invoke-static {p0}, Lcom/jaga/ibraceletplus/jyring/util/ConvertUtil;->getWeekArray(I)[Z

    move-result-object p0

    const/4 v1, 0x6

    .line 43
    aget-boolean v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableSunday(I)V

    .line 44
    aget-boolean v1, p0, v2

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableMonday(I)V

    .line 45
    aget-boolean v1, p0, v3

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableTuesday(I)V

    const/4 v1, 0x2

    .line 46
    aget-boolean v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableWednesday(I)V

    const/4 v1, 0x3

    .line 47
    aget-boolean v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableThursday(I)V

    const/4 v1, 0x4

    .line 48
    aget-boolean v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableFriday(I)V

    const/4 v1, 0x5

    .line 49
    aget-boolean p0, p0, v1

    invoke-virtual {v0, p0}, Lcom/sxr/sdk/ble/keepfit/aidl/AlarmInfoItem;->setEnableSaturday(I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlarm_id()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->alarm_id:J

    return-wide v0
.end method

.method public getEnable()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->enable:I

    return v0
.end method

.method public getEndDay()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endDay:I

    return v0
.end method

.method public getEndMonth()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endMonth:I

    return v0
.end method

.method public getEndYear()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endYear:I

    return v0
.end method

.method public getEndhour()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endhour:I

    return v0
.end method

.method public getEndminute()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endminute:I

    return v0
.end method

.method public getFireday()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->fireday:Ljava/lang/String;

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->minute:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeat_hour()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_hour:I

    return v0
.end method

.method public getRepeat_schedule()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_schedule:I

    return v0
.end method

.method public getRepeat_times()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_times:I

    return v0
.end method

.method public getSnooze()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze:I

    return v0
.end method

.method public getSnooze_repeat()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze_repeat:I

    return v0
.end method

.method public getStartDay()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startDay:I

    return v0
.end method

.method public getStartMonth()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startMonth:I

    return v0
.end method

.method public getStartYear()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startYear:I

    return v0
.end method

.method public getStarthour()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->starthour:I

    return v0
.end method

.method public getStartminute()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startminute:I

    return v0
.end method

.method public getSubtype()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->subtype:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->type:I

    return v0
.end method

.method public getWeekly()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->weekly:I

    return v0
.end method

.method public setAlarm_id(J)V
    .locals 0

    .line 177
    iput-wide p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->alarm_id:J

    return-void
.end method

.method public setEnable(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->enable:I

    return-void
.end method

.method public setEndDay(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endDay:I

    return-void
.end method

.method public setEndMonth(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endMonth:I

    return-void
.end method

.method public setEndYear(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endYear:I

    return-void
.end method

.method public setEndhour(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endhour:I

    return-void
.end method

.method public setEndminute(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endminute:I

    return-void
.end method

.method public setFireday(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->fireday:Ljava/lang/String;

    return-void
.end method

.method public setHour(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->minute:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setRepeat_hour(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_hour:I

    return-void
.end method

.method public setRepeat_schedule(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_schedule:I

    return-void
.end method

.method public setRepeat_times(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_times:I

    return-void
.end method

.method public setSnooze(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze:I

    return-void
.end method

.method public setSnooze_repeat(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze_repeat:I

    return-void
.end method

.method public setStartDay(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startDay:I

    return-void
.end method

.method public setStartMonth(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startMonth:I

    return-void
.end method

.method public setStartYear(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startYear:I

    return-void
.end method

.method public setStarthour(I)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->starthour:I

    return-void
.end method

.method public setStartminute(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startminute:I

    return-void
.end method

.method public setSubtype(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->subtype:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->type:I

    return-void
.end method

.method public setWeekly(I)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->weekly:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->alarm_id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->fireday:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->hour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->minute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->starthour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startminute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endhour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endminute:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_hour:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_times:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->weekly:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->subtype:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->enable:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->snooze_repeat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->repeat_schedule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->startDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Lcom/jaga/ibraceletplus/jyring/bean/AlarmInfoItem;->endDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
