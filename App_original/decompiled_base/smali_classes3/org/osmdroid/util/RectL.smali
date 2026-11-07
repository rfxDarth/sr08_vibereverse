.class public Lorg/osmdroid/util/RectL;
.super Ljava/lang/Object;
.source "RectL.java"


# instance fields
.field public bottom:J

.field public left:J

.field public right:J

.field public top:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual/range {p0 .. p8}, Lorg/osmdroid/util/RectL;->set(JJJJ)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/RectL;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lorg/osmdroid/util/RectL;->set(Lorg/osmdroid/util/RectL;)V

    return-void
.end method

.method public static getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 16

    move-object/from16 v0, p0

    if-eqz p5, :cond_0

    move-object/from16 v1, p5

    goto :goto_0

    .line 206
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v4, p3, v2

    if-nez v4, :cond_1

    .line 208
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 209
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 210
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 211
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    return-object v1

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p3

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 216
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 221
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 222
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-long v4, v2

    int-to-long v6, v3

    move/from16 v2, p1

    int-to-long v8, v2

    move/from16 v2, p2

    int-to-long v10, v2

    .line 223
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    long-to-int v3, v2

    .line 224
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    long-to-int v2, v4

    .line 225
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 226
    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 227
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 228
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-long v4, v2

    int-to-long v6, v3

    .line 229
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    long-to-int v3, v2

    .line 230
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    long-to-int v2, v4

    .line 231
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_2

    .line 232
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 234
    :cond_2
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v2, :cond_3

    .line 235
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 237
    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_4

    .line 238
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 240
    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_5

    .line 241
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 243
    :cond_5
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 244
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-long v4, v2

    int-to-long v6, v3

    .line 245
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    long-to-int v3, v2

    .line 246
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    long-to-int v2, v4

    .line 247
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_6

    .line 248
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 250
    :cond_6
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v2, :cond_7

    .line 251
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 253
    :cond_7
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_8

    .line 254
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 256
    :cond_8
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_9

    .line 257
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 259
    :cond_9
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 260
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-long v4, v2

    int-to-long v6, v0

    .line 261
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    long-to-int v0, v2

    .line 262
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v2

    long-to-int v3, v2

    .line 263
    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_a

    .line 264
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 266
    :cond_a
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_b

    .line 267
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 269
    :cond_b
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v0, :cond_c

    .line 270
    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 272
    :cond_c
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_d

    .line 273
    iput v0, v1, Landroid/graphics/Rect;->right:I

    :cond_d
    return-object v1
.end method

.method public static getBounds(Lorg/osmdroid/util/RectL;JJDLorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;
    .locals 16

    move-object/from16 v0, p0

    if-eqz p7, :cond_0

    move-object/from16 v1, p7

    goto :goto_0

    .line 123
    :cond_0
    new-instance v1, Lorg/osmdroid/util/RectL;

    invoke-direct {v1}, Lorg/osmdroid/util/RectL;-><init>()V

    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v4, p5, v2

    if-nez v4, :cond_1

    .line 125
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 126
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 127
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 128
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    return-object v1

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p5

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 138
    iget-wide v4, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 139
    iget-wide v6, v0, Lorg/osmdroid/util/RectL;->top:J

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 140
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 141
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    .line 142
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 143
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 144
    iget-wide v4, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 145
    iget-wide v6, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 146
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 147
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    .line 148
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_2

    .line 149
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 151
    :cond_2
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v8, v6, v4

    if-gez v8, :cond_3

    .line 152
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 154
    :cond_3
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    .line 155
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 157
    :cond_4
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_5

    .line 158
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    .line 160
    :cond_5
    iget-wide v4, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 161
    iget-wide v6, v0, Lorg/osmdroid/util/RectL;->bottom:J

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 162
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 163
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    .line 164
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_6

    .line 165
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 167
    :cond_6
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v8, v6, v4

    if-gez v8, :cond_7

    .line 168
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 170
    :cond_7
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_8

    .line 171
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 173
    :cond_8
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_9

    .line 174
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    .line 176
    :cond_9
    iget-wide v4, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 177
    iget-wide v6, v0, Lorg/osmdroid/util/RectL;->bottom:J

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 178
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 179
    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    .line 180
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_a

    .line 181
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 183
    :cond_a
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_b

    .line 184
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 186
    :cond_b
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_c

    .line 187
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 189
    :cond_c
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_d

    .line 190
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    :cond_d
    return-object v1
.end method

.method public static getRotatedX(JJDJJ)J
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    if-nez v2, :cond_0

    return-wide p0

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 289
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-wide v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v2 .. v13}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRotatedX(JJJJDD)J
    .locals 0

    sub-long/2addr p0, p4

    long-to-double p0, p0

    mul-double p0, p0, p8

    sub-long/2addr p2, p6

    long-to-double p2, p2

    mul-double p2, p2, p10

    sub-double/2addr p0, p2

    .line 314
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p4, p0

    return-wide p4
.end method

.method public static getRotatedY(JJDJJ)J
    .locals 14

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    if-nez v2, :cond_0

    return-wide p2

    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-wide v2, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-static/range {v2 .. v13}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRotatedY(JJJJDD)J
    .locals 0

    sub-long/2addr p0, p4

    long-to-double p0, p0

    mul-double p0, p0, p10

    sub-long/2addr p2, p6

    long-to-double p2, p2

    mul-double p2, p2, p8

    add-double/2addr p0, p2

    .line 325
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p6, p0

    return-wide p6
.end method

.method public static intersects(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/RectL;)Z
    .locals 5

    .line 59
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide p0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public centerX()J
    .locals 4

    .line 368
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public centerY()J
    .locals 4

    .line 375
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public contains(JJ)Z
    .locals 9

    .line 69
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v6, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    cmp-long v8, p1, v0

    if-ltz v8, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    cmp-long p1, p3, v4

    if-ltz p1, :cond_0

    cmp-long p1, p3, v6

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    check-cast p1, Lorg/osmdroid/util/RectL;

    .line 101
    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v4, p1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 106
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    const-wide/16 v2, 0x1f

    mul-long v0, v0, v2

    .line 107
    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    .line 108
    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, v4

    mul-long v0, v0, v2

    .line 109
    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    .line 110
    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final height()J
    .locals 4

    .line 87
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public inset(JJ)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 77
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 78
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 79
    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public offset(JJ)V
    .locals 2

    .line 332
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 333
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 334
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 335
    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public set(JJJJ)V
    .locals 0

    .line 32
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 33
    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 34
    iput-wide p5, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 35
    iput-wide p7, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public set(Lorg/osmdroid/util/RectL;)V
    .locals 2

    .line 39
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 40
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 41
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 42
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectL("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->left:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(JJ)V
    .locals 3

    .line 46
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 47
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->left:J

    goto :goto_0

    .line 48
    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 49
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 51
    :cond_1
    :goto_0
    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v0, p3, p1

    if-gez v0, :cond_2

    .line 52
    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->top:J

    return-void

    .line 53
    :cond_2
    iget-wide p1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_3

    .line 54
    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->bottom:J

    :cond_3
    return-void
.end method

.method public union(JJJJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    cmp-long v9, v1, v5

    if-gez v9, :cond_4

    cmp-long v9, v3, v7

    if-gez v9, :cond_4

    .line 343
    iget-wide v9, v0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v11, v0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_3

    iget-wide v13, v0, Lorg/osmdroid/util/RectL;->top:J

    move-wide v15, v9

    iget-wide v9, v0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v17, v13, v9

    if-gez v17, :cond_3

    cmp-long v17, v15, v1

    if-lez v17, :cond_0

    .line 344
    iput-wide v1, v0, Lorg/osmdroid/util/RectL;->left:J

    :cond_0
    cmp-long v1, v13, v3

    if-lez v1, :cond_1

    .line 345
    iput-wide v3, v0, Lorg/osmdroid/util/RectL;->top:J

    :cond_1
    cmp-long v1, v11, v5

    if-gez v1, :cond_2

    .line 346
    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    :cond_2
    cmp-long v1, v9, v7

    if-gez v1, :cond_4

    .line 347
    iput-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    return-void

    .line 349
    :cond_3
    iput-wide v1, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 350
    iput-wide v3, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 351
    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 352
    iput-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    :cond_4
    return-void
.end method

.method public union(Lorg/osmdroid/util/RectL;)V
    .locals 9

    .line 361
    iget-wide v1, p1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v3, p1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v5, p1, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v7, p1, Lorg/osmdroid/util/RectL;->bottom:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/RectL;->union(JJJJ)V

    return-void
.end method

.method public final width()J
    .locals 4

    .line 83
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->left:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
