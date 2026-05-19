.class public Lcom/cdo/oaps/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv1/d;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lv1/o;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cdo/oaps/a;->a:Ljava/lang/String;

    invoke-static {}, Lv1/o;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cdo/oaps/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, ""

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_b
    const-string/jumbo v4, "scheme"

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_23

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    goto :goto_24

    :cond_1d
    new-instance v5, Lv1/r;

    invoke-direct {v5, v4}, Lv1/r;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_23
    const/4 v5, 0x0

    :goto_24
    check-cast v5, Ljava/lang/String;
    :try_end_26
    .catch Lv1/r; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-object v5, v2

    :goto_28
    const-string/jumbo v4, "oaps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2af

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Lz1/f;

    invoke-direct {v8, v7}, Lz1/f;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "src"

    invoke-virtual {v8, v9, v7}, Lv1/s;->e(Ljava/lang/String;Ljava/lang/Object;)Lv1/s;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "ts"

    invoke-virtual {v8, v7, v4}, Lv1/s;->e(Ljava/lang/String;Ljava/lang/Object;)Lv1/s;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :try_start_5e
    invoke-virtual {v8, v9}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_64
    .catch Lv1/r; {:try_start_5e .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-object v9, v2

    :goto_66
    :try_start_66
    invoke-virtual {v8, v7}, Lv1/s;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_6c
    .catch Lv1/r; {:try_start_66 .. :try_end_6c} :catch_6d

    goto :goto_6e

    :catch_6d
    move-object v7, v2

    :goto_6e
    invoke-static {v9, v7}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTF-8"

    if-nez v7, :cond_7d

    const/4 v7, 0x0

    move-object/from16 p0, v2

    move-object/from16 v18, v3

    goto/16 :goto_27a

    :cond_7d
    const/4 v10, 0x2

    :try_start_7e
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7e .. :try_end_82} :catch_83

    goto :goto_a5

    :catch_83
    :try_start_83
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v12, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    array-length v11, v7

    sub-int/2addr v11, v10

    new-array v12, v11, [B

    invoke-static {v7, v10, v12, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_a1} :catch_a3

    move-object v7, v12

    goto :goto_a5

    :catch_a3
    new-array v7, v5, [B

    :goto_a5
    new-instance v10, Lv1/a0;

    invoke-direct {v10}, Lv1/a0;-><init>()V

    const-string v11, "7U727ALEWH8"

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-static {v11}, Lv1/c;->a([B)[B

    move-result-object v11

    invoke-static {v11}, Lv1/c;->a([B)[B

    move-result-object v11

    array-length v12, v7

    const/16 v13, 0x8

    if-nez v11, :cond_bf

    goto/16 :goto_180

    :cond_bf
    new-array v14, v13, [B

    iput-object v14, v10, Lv1/a0;->h:[B

    new-array v15, v13, [B

    iput-object v15, v10, Lv1/a0;->j:[B

    iput v6, v10, Lv1/a0;->i:I

    iput v5, v10, Lv1/a0;->g:I

    iput v5, v10, Lv1/a0;->c:I

    iput v5, v10, Lv1/a0;->b:I

    iput-object v11, v10, Lv1/a0;->e:[B

    iput-boolean v6, v10, Lv1/a0;->d:Z

    add-int/lit8 v11, v12, 0xa

    rem-int/2addr v11, v13

    iput v11, v10, Lv1/a0;->i:I

    if-eqz v11, :cond_de

    rsub-int/lit8 v11, v11, 0x8

    iput v11, v10, Lv1/a0;->i:I

    :cond_de
    iget v11, v10, Lv1/a0;->i:I

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0xa

    new-array v11, v11, [B

    iput-object v11, v10, Lv1/a0;->f:[B

    invoke-virtual {v10}, Lv1/a0;->d()I

    move-result v11

    and-int/lit16 v11, v11, 0xf8

    iget v15, v10, Lv1/a0;->i:I

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v14, v5

    move v11, v6

    :goto_f4
    iget v14, v10, Lv1/a0;->i:I

    if-gt v11, v14, :cond_106

    iget-object v14, v10, Lv1/a0;->h:[B

    invoke-virtual {v10}, Lv1/a0;->d()I

    move-result v15

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_f4

    :cond_106
    add-int/2addr v14, v6

    iput v14, v10, Lv1/a0;->i:I

    move v11, v5

    :goto_10a
    if-ge v11, v13, :cond_113

    iget-object v14, v10, Lv1/a0;->j:[B

    aput-byte v5, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_10a

    :cond_113
    iput v6, v10, Lv1/a0;->g:I

    :cond_115
    :goto_115
    iget v11, v10, Lv1/a0;->g:I

    const/4 v14, 0x2

    if-gt v11, v14, :cond_13a

    iget v11, v10, Lv1/a0;->i:I

    if-ge v11, v13, :cond_132

    iget-object v14, v10, Lv1/a0;->h:[B

    add-int/lit8 v15, v11, 0x1

    iput v15, v10, Lv1/a0;->i:I

    invoke-virtual {v10}, Lv1/a0;->d()I

    move-result v15

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    aput-byte v15, v14, v11

    iget v11, v10, Lv1/a0;->g:I

    add-int/2addr v11, v6

    iput v11, v10, Lv1/a0;->g:I

    :cond_132
    iget v11, v10, Lv1/a0;->i:I

    if-ne v11, v13, :cond_115

    invoke-virtual {v10}, Lv1/a0;->b()V

    goto :goto_115

    :cond_13a
    :goto_13a
    if-lez v12, :cond_157

    iget v11, v10, Lv1/a0;->i:I

    if-ge v11, v13, :cond_14f

    iget-object v14, v10, Lv1/a0;->h:[B

    add-int/lit8 v15, v11, 0x1

    iput v15, v10, Lv1/a0;->i:I

    add-int/lit8 v15, v5, 0x1

    aget-byte v5, v7, v5

    aput-byte v5, v14, v11

    add-int/lit8 v12, v12, -0x1

    move v5, v15

    :cond_14f
    iget v11, v10, Lv1/a0;->i:I

    if-ne v11, v13, :cond_13a

    invoke-virtual {v10}, Lv1/a0;->b()V

    goto :goto_13a

    :cond_157
    iput v6, v10, Lv1/a0;->g:I

    :cond_159
    :goto_159
    iget v5, v10, Lv1/a0;->g:I

    const/4 v6, 0x7

    if-gt v5, v6, :cond_177

    iget v6, v10, Lv1/a0;->i:I

    if-ge v6, v13, :cond_16f

    iget-object v7, v10, Lv1/a0;->h:[B

    add-int/lit8 v11, v6, 0x1

    iput v11, v10, Lv1/a0;->i:I

    const/4 v11, 0x0

    aput-byte v11, v7, v6

    add-int/lit8 v5, v5, 0x1

    iput v5, v10, Lv1/a0;->g:I

    :cond_16f
    iget v5, v10, Lv1/a0;->i:I

    if-ne v5, v13, :cond_159

    invoke-virtual {v10}, Lv1/a0;->b()V

    goto :goto_159

    :cond_177
    iget-object v5, v10, Lv1/a0;->f:[B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, [B

    :goto_180
    sget-object v5, Lv1/b;->a:[B

    array-length v5, v7

    mul-int/2addr v5, v13

    rem-int/lit8 v6, v5, 0x18

    div-int/lit8 v5, v5, 0x18

    if-eqz v6, :cond_18f

    add-int/lit8 v10, v5, 0x1

    mul-int/lit8 v10, v10, 0x4

    goto :goto_191

    :cond_18f
    mul-int/lit8 v10, v5, 0x4

    :goto_191
    new-array v11, v10, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_195
    if-ge v12, v5, :cond_1fa

    mul-int/lit8 v14, v12, 0x3

    aget-byte v15, v7, v14

    add-int/lit8 v16, v14, 0x1

    aget-byte v16, v7, v16

    add-int/lit8 v14, v14, 0x2

    aget-byte v14, v7, v14

    move-object/from16 p0, v2

    and-int/lit8 v2, v16, 0xf

    int-to-byte v2, v2

    move/from16 v17, v5

    and-int/lit8 v5, v15, 0x3

    int-to-byte v5, v5

    and-int/lit8 v18, v15, -0x80

    shr-int/lit8 v15, v15, 0x2

    if-nez v18, :cond_1b4

    goto :goto_1b6

    :cond_1b4
    xor-int/lit16 v15, v15, 0xc0

    :goto_1b6
    int-to-byte v15, v15

    and-int/lit8 v18, v16, -0x80

    shr-int/lit8 v1, v16, 0x4

    if-nez v18, :cond_1be

    goto :goto_1c0

    :cond_1be
    xor-int/lit16 v1, v1, 0xf0

    :goto_1c0
    int-to-byte v1, v1

    and-int/lit8 v16, v14, -0x80

    move-object/from16 v18, v3

    shr-int/lit8 v3, v14, 0x6

    if-nez v16, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    xor-int/lit16 v3, v3, 0xfc

    :goto_1cc
    int-to-byte v3, v3

    sget-object v16, Lv1/b;->c:[B

    aget-byte v15, v16, v15

    aput-byte v15, v11, v13

    add-int/lit8 v15, v13, 0x1

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    aget-byte v1, v16, v1

    aput-byte v1, v11, v15

    add-int/lit8 v1, v13, 0x2

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v3

    aget-byte v2, v16, v2

    aput-byte v2, v11, v1

    add-int/lit8 v1, v13, 0x3

    and-int/lit8 v2, v14, 0x3f

    aget-byte v2, v16, v2

    aput-byte v2, v11, v1

    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p0

    move-object/from16 v1, p1

    move/from16 v5, v17

    move-object/from16 v3, v18

    goto :goto_195

    :cond_1fa
    move-object/from16 p0, v2

    move-object/from16 v18, v3

    mul-int/lit8 v12, v12, 0x3

    const/16 v1, 0x3d

    const/16 v2, 0x8

    if-ne v6, v2, :cond_22c

    aget-byte v2, v7, v12

    and-int/lit8 v3, v2, 0x3

    int-to-byte v3, v3

    and-int/lit8 v5, v2, -0x80

    shr-int/lit8 v2, v2, 0x2

    if-nez v5, :cond_212

    goto :goto_214

    :cond_212
    xor-int/lit16 v2, v2, 0xc0

    :goto_214
    int-to-byte v2, v2

    sget-object v5, Lv1/b;->c:[B

    aget-byte v2, v5, v2

    aput-byte v2, v11, v13

    add-int/lit8 v2, v13, 0x1

    shl-int/lit8 v3, v3, 0x4

    aget-byte v3, v5, v3

    aput-byte v3, v11, v2

    add-int/lit8 v2, v13, 0x2

    aput-byte v1, v11, v2

    add-int/lit8 v13, v13, 0x3

    aput-byte v1, v11, v13

    goto :goto_26d

    :cond_22c
    const/16 v2, 0x10

    if-ne v6, v2, :cond_26d

    aget-byte v2, v7, v12

    const/4 v3, 0x1

    add-int/2addr v12, v3

    aget-byte v5, v7, v12

    and-int/lit8 v6, v5, 0xf

    int-to-byte v6, v6

    and-int/lit8 v7, v2, 0x3

    int-to-byte v7, v7

    and-int/lit8 v12, v2, -0x80

    shr-int/lit8 v2, v2, 0x2

    if-nez v12, :cond_243

    goto :goto_245

    :cond_243
    xor-int/lit16 v2, v2, 0xc0

    :goto_245
    int-to-byte v2, v2

    and-int/lit8 v12, v5, -0x80

    shr-int/lit8 v5, v5, 0x4

    if-nez v12, :cond_24d

    goto :goto_24f

    :cond_24d
    xor-int/lit16 v5, v5, 0xf0

    :goto_24f
    int-to-byte v5, v5

    sget-object v12, Lv1/b;->c:[B

    aget-byte v2, v12, v2

    aput-byte v2, v11, v13

    add-int/lit8 v2, v13, 0x1

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v5, v7

    aget-byte v5, v12, v5

    aput-byte v5, v11, v2

    add-int/lit8 v2, v13, 0x2

    shl-int/lit8 v5, v6, 0x2

    aget-byte v5, v12, v5

    aput-byte v5, v11, v2

    add-int/lit8 v13, v13, 0x3

    aput-byte v1, v11, v13

    move v6, v3

    goto :goto_26f

    :cond_26d
    :goto_26d
    const/4 v1, 0x1

    move v6, v1

    :goto_26f
    :try_start_26f
    new-instance v7, Ljava/lang/String;
    :try_end_271
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_26f .. :try_end_271} :catch_276

    const/4 v5, 0x0

    :try_start_272
    invoke-direct {v7, v11, v5, v10, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_275
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_272 .. :try_end_275} :catch_278

    goto :goto_27a

    :catch_276
    const/4 v1, 0x0

    move v5, v1

    :catch_278
    move-object/from16 v7, p0

    :goto_27a
    const-string v1, "ck"

    invoke-virtual {v8, v1, v7}, Lv1/s;->e(Ljava/lang/String;Ljava/lang/Object;)Lv1/s;

    invoke-virtual {v8}, Lv1/s;->d()Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28d
    :goto_28d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_28d

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28d

    :cond_2af
    move-object/from16 p0, v2

    move-object/from16 v18, v3

    :cond_2b3
    new-instance v1, Lv1/a;

    invoke-direct {v1, v0}, Lv1/a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lv1/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35c

    invoke-virtual {v1}, Lv1/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35c

    invoke-virtual {v1}, Lv1/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lv1/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lv1/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lv1/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lv1/s;->d()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_357

    const-string v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_357

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_32d

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_351

    :try_start_341
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_34c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_341 .. :try_end_34c} :catch_34d

    goto :goto_353

    :catch_34d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_351
    move-object/from16 v0, p0

    :goto_353
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_30e

    :cond_357
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35e

    :cond_35c
    move-object/from16 v0, p0

    :goto_35e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_362
    const-string v1, "host"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_379

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_373

    goto :goto_37a

    :cond_373
    new-instance v2, Lv1/r;

    invoke-direct {v2, v1}, Lv1/r;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_379
    const/4 v2, 0x0

    :goto_37a
    check-cast v2, Ljava/lang/String;
    :try_end_37c
    .catch Lv1/r; {:try_start_362 .. :try_end_37c} :catch_37d

    goto :goto_37f

    :catch_37d
    move-object/from16 v2, p0

    :goto_37f
    const-string v1, "gc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38c

    sget-object v1, Lcom/cdo/oaps/a;->a:Ljava/lang/String;

    move-object/from16 v3, p1

    goto :goto_3b6

    :cond_38c
    const-string/jumbo v1, "mk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a5

    sget-object v1, Lcom/cdo/oaps/a;->b:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lv1/i;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a0

    goto :goto_3b6

    :cond_3a0
    invoke-static {}, Lv1/o;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b6

    :cond_3a5
    move-object/from16 v3, p1

    const-string/jumbo v1, "mk_op"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b5

    invoke-static {}, Lv1/o;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_3b6

    :cond_3b5
    const/4 v1, 0x0

    :goto_3b6
    :try_start_3b6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "Y29tLm9wcG8ubWFpbi5BQ1RJT05fTEFVTkNI"

    invoke-static {v4}, Lv1/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "b3Bwby9sYXVuY2g="

    invoke-static {v4}, Lv1/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_430

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_430

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e3
    :goto_3e3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_430

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_400

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41b

    goto :goto_3e3

    :cond_400
    sget-object v8, Lcom/cdo/oaps/a;->a:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e3

    invoke-static {}, Lv1/o;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e3

    sget-object v8, Lcom/cdo/oaps/a;->b:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41b

    goto :goto_3e3

    :cond_41b
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_42f
    .catchall {:try_start_3b6 .. :try_end_42f} :catchall_430

    move v5, v6

    :catchall_430
    :cond_430
    return v5
.end method
