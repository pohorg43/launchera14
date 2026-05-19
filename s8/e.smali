.class public final Ls8/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Ls8/e;->a:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_4a

    sput-object v1, Ls8/e;->b:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6e

    sput-object v1, Ls8/e;->c:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_92

    sput-object v0, Ls8/e;->d:[I

    return-void

    nop

    :array_22
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_4a
    .array-data 4
        0x3
        0x2
        0x1
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_6e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_92
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data
.end method

.method public static a(Ls8/j;I)V
    .registers 10

    iget-object v0, p0, Ls8/j;->c:Ls8/a;

    iget-object v1, p0, Ls8/j;->p:[I

    mul-int/lit8 v2, p1, 0x2

    iget-object v3, p0, Ls8/j;->e:[I

    mul-int/lit16 v4, p1, 0x438

    invoke-static {v3, v4, v0}, Ls8/e;->g([IILs8/a;)I

    move-result v3

    iget-object v5, p0, Ls8/j;->n:[I

    iget-object v6, p0, Ls8/j;->f:[I

    invoke-static {v6, v4, v0}, Ls8/e;->g([IILs8/a;)I

    move-result v4

    sget-object v6, Ls8/h;->b:[I

    aget v6, v6, v4

    sget-object v7, Ls8/h;->a:[I

    aget v4, v7, v4

    invoke-static {v0, v6}, Ls8/a;->c(Ls8/a;I)I

    move-result v0

    add-int/2addr v0, v4

    aput v0, v5, p1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_2e

    add-int/lit8 v3, v2, 0x1

    aget v3, v1, v3

    add-int/2addr v3, v0

    goto :goto_35

    :cond_2e
    if-nez v3, :cond_33

    aget v3, v1, v2

    goto :goto_35

    :cond_33
    add-int/lit8 v3, v3, -0x2

    :goto_35
    iget-object p0, p0, Ls8/j;->o:[I

    aget v0, p0, p1

    if-lt v3, v0, :cond_3e

    aget p0, p0, p1

    sub-int/2addr v3, p0

    :cond_3e
    add-int/lit8 p0, v2, 0x1

    aget p1, v1, p0

    aput p1, v1, v2

    aput v3, v1, p0

    return-void
.end method

.method public static b(I[BLs8/a;)I
    .registers 11

    invoke-static {p2}, Ls8/a;->d(Ls8/a;)V

    invoke-static {p2}, Ls8/e;->d(Ls8/a;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    invoke-static {p1, v2, p0}, Ls8/l;->a([BII)V

    return v0

    :cond_10
    invoke-static {p2, v1}, Ls8/a;->c(Ls8/a;I)I

    move-result v3

    if-ne v3, v1, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    if-eqz v3, :cond_22

    const/4 v3, 0x4

    invoke-static {p2, v3}, Ls8/a;->c(Ls8/a;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    const/16 v4, 0x438

    new-array v4, v4, [I

    add-int v5, v0, v3

    invoke-static {v5, v4, v2, p2}, Ls8/e;->f(I[IILs8/a;)V

    move v5, v2

    :cond_2d
    :goto_2d
    if-ge v5, p0, :cond_5e

    invoke-static {p2}, Ls8/a;->d(Ls8/a;)V

    invoke-static {v4, v2, p2}, Ls8/e;->g([IILs8/a;)I

    move-result v6

    if-nez v6, :cond_3b

    aput-byte v2, p1, v5

    goto :goto_5b

    :cond_3b
    if-gt v6, v3, :cond_57

    shl-int v7, v1, v6

    invoke-static {p2, v6}, Ls8/a;->c(Ls8/a;I)I

    move-result v6

    add-int/2addr v6, v7

    :goto_44
    if-eqz v6, :cond_2d

    if-ge v5, p0, :cond_4f

    aput-byte v2, p1, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_44

    :cond_4f
    new-instance p0, Ls8/c;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    sub-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    :cond_5e
    invoke-static {p2, v1}, Ls8/a;->c(Ls8/a;I)I

    move-result p2

    if-ne p2, v1, :cond_8f

    const/16 p2, 0x100

    new-array v1, p2, [I

    move v3, v2

    :goto_69
    if-ge v3, p2, :cond_70

    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_70
    move p2, v2

    :goto_71
    if-ge p2, p0, :cond_8f

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    if-eqz v3, :cond_8c

    aget v4, v1, v3

    :goto_80
    if-lez v3, :cond_8a

    add-int/lit8 v5, v3, -0x1

    aget v6, v1, v5

    aput v6, v1, v3

    move v3, v5

    goto :goto_80

    :cond_8a
    aput v4, v1, v2

    :cond_8c
    add-int/lit8 p2, p2, 0x1

    goto :goto_71

    :cond_8f
    return v0
.end method

.method public static c(Ls8/j;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ls8/e;->a(Ls8/j;I)V

    iget-object v0, p0, Ls8/j;->p:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    shl-int/lit8 v2, v0, 0x6

    iput v2, p0, Ls8/j;->A:I

    iget-object v3, p0, Ls8/j;->z:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Ls8/j;->k:Ls8/g;

    iget-object v3, v3, Ls8/g;->c:[I

    aget v2, v3, v2

    iput v2, p0, Ls8/j;->v:I

    iget-object v2, p0, Ls8/j;->y:[B

    aget-byte v0, v2, v0

    sget-object v2, Ls8/d;->b:[I

    aget v3, v2, v0

    iput v3, p0, Ls8/j;->C:I

    add-int/2addr v0, v1

    aget v0, v2, v0

    iput v0, p0, Ls8/j;->D:I

    return-void
.end method

.method public static d(Ls8/a;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ls8/a;->c(Ls8/a;I)I

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x3

    invoke-static {p0, v1}, Ls8/a;->c(Ls8/a;I)I

    move-result v1

    if-nez v1, :cond_f

    return v0

    :cond_f
    invoke-static {p0, v1}, Ls8/a;->c(Ls8/a;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ls8/j;)V
    .registers 23

    move-object/from16 v0, p0

    sget-object v1, Ls8/i;->f:Ls8/i;

    sget-object v2, Ls8/i;->h:Ls8/i;

    sget-object v3, Ls8/i;->b:Ls8/i;

    sget-object v4, Ls8/i;->g:Ls8/i;

    sget-object v5, Ls8/i;->d:Ls8/i;

    sget-object v6, Ls8/i;->m:Ls8/i;

    iget-object v7, v0, Ls8/j;->a:Ls8/i;

    sget-object v8, Ls8/i;->a:Ls8/i;

    if-eq v7, v8, :cond_759

    sget-object v8, Ls8/i;->l:Ls8/i;

    if-eq v7, v8, :cond_751

    iget-object v7, v0, Ls8/j;->c:Ls8/a;

    iget v8, v0, Ls8/j;->P:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iget-object v10, v0, Ls8/j;->d:[B

    :goto_20
    iget-object v11, v0, Ls8/j;->a:Ls8/i;

    sget-object v12, Ls8/i;->k:Ls8/i;

    const-string v13, "Invalid metablock length"

    if-eq v11, v12, :cond_720

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/16 v14, 0xc

    if-eq v11, v14, :cond_6d4

    const-string v9, "Invalid backward reference"

    const/4 v15, 0x4

    packed-switch v11, :pswitch_data_762

    new-instance v1, Ls8/c;

    const-string v2, "Unexpected state "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Ls8/j;->a:Ls8/i;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_4b  #0x9
    iget v11, v0, Ls8/j;->L:I

    if-lt v11, v15, :cond_142

    const/16 v12, 0x18

    if-gt v11, v12, :cond_142

    sget-object v12, Ls8/f;->a:[I

    aget v12, v12, v11

    iget v13, v0, Ls8/j;->K:I

    iget v14, v0, Ls8/j;->s:I

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sget-object v15, Ls8/f;->b:[I

    aget v15, v15, v11

    shl-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    and-int/2addr v14, v13

    ushr-int/2addr v13, v15

    mul-int/2addr v14, v11

    add-int/2addr v14, v12

    sget-object v12, Ls8/k;->d:[Ls8/k;

    array-length v15, v12

    if-ge v13, v15, :cond_13c

    iget v9, v0, Ls8/j;->M:I

    sget-object v15, Ls8/f$a;->a:[B

    sget-object v15, Ls8/f$a;->a:[B

    aget-object v12, v12, v13

    iget-object v13, v12, Ls8/k;->a:[B

    move-object/from16 v16, v2

    array-length v2, v13

    const/16 v17, 0x0

    move/from16 v18, v8

    move/from16 v8, v17

    move/from16 v17, v9

    :goto_83
    if-ge v8, v2, :cond_92

    add-int/lit8 v19, v17, 0x1

    add-int/lit8 v20, v8, 0x1

    aget-byte v8, v13, v8

    aput-byte v8, v10, v17

    move/from16 v17, v19

    move/from16 v8, v20

    goto :goto_83

    :cond_92
    iget v2, v12, Ls8/k;->b:I

    invoke-static {v2}, Lk/b;->r(I)I

    move-result v8

    if-le v8, v11, :cond_9b

    move v8, v11

    :cond_9b
    add-int/2addr v14, v8

    sub-int/2addr v11, v8

    invoke-static {v2}, Lk/b;->s(I)I

    move-result v8

    sub-int/2addr v11, v8

    move v8, v11

    :goto_a3
    if-lez v8, :cond_b4

    add-int/lit8 v13, v17, 0x1

    add-int/lit8 v19, v14, 0x1

    aget-byte v14, v15, v14

    aput-byte v14, v10, v17

    add-int/lit8 v8, v8, -0x1

    move/from16 v17, v13

    move/from16 v14, v19

    goto :goto_a3

    :cond_b4
    const/16 v8, 0xc

    if-eq v2, v8, :cond_bd

    const/16 v8, 0xb

    if-ne v2, v8, :cond_102

    goto :goto_bf

    :cond_bd
    const/16 v8, 0xb

    :goto_bf
    sub-int v13, v17, v11

    if-ne v2, v8, :cond_c4

    const/4 v11, 0x1

    :cond_c4
    :goto_c4
    if-lez v11, :cond_102

    aget-byte v2, v10, v13

    and-int/lit16 v2, v2, 0xff

    const/16 v8, 0xc0

    if-ge v2, v8, :cond_e2

    const/16 v8, 0x61

    if-lt v2, v8, :cond_dd

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_dd

    aget-byte v2, v10, v13

    xor-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v10, v13

    :cond_dd
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, -0x1

    goto :goto_c4

    :cond_e2
    const/16 v8, 0xe0

    if-ge v2, v8, :cond_f4

    add-int/lit8 v2, v13, 0x1

    aget-byte v8, v10, v2

    xor-int/lit8 v8, v8, 0x20

    int-to-byte v8, v8

    aput-byte v8, v10, v2

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v11, v11, -0x2

    goto :goto_c4

    :cond_f4
    add-int/lit8 v2, v13, 0x2

    aget-byte v8, v10, v2

    xor-int/lit8 v8, v8, 0x5

    int-to-byte v8, v8

    aput-byte v8, v10, v2

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v11, v11, -0x3

    goto :goto_c4

    :cond_102
    iget-object v2, v12, Ls8/k;->c:[B

    array-length v8, v2

    const/4 v11, 0x0

    :goto_106
    if-ge v11, v8, :cond_114

    add-int/lit8 v12, v17, 0x1

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v2, v11

    aput-byte v11, v10, v17

    move/from16 v17, v12

    move v11, v13

    goto :goto_106

    :cond_114
    sub-int v17, v17, v9

    iget v2, v0, Ls8/j;->M:I

    add-int v2, v2, v17

    iput v2, v0, Ls8/j;->M:I

    iget v8, v0, Ls8/j;->r:I

    add-int v8, v8, v17

    iput v8, v0, Ls8/j;->r:I

    iget v8, v0, Ls8/j;->g:I

    sub-int v8, v8, v17

    iput v8, v0, Ls8/j;->g:I

    iget v8, v0, Ls8/j;->P:I

    if-lt v2, v8, :cond_139

    sget-object v2, Ls8/i;->i:Ls8/i;

    iput-object v2, v0, Ls8/j;->b:Ls8/i;

    iput v8, v0, Ls8/j;->X:I

    const/4 v2, 0x0

    iput v2, v0, Ls8/j;->W:I

    iput-object v6, v0, Ls8/j;->a:Ls8/i;

    goto/16 :goto_1a2

    :cond_139
    iput-object v5, v0, Ls8/j;->a:Ls8/i;

    goto :goto_1a2

    :cond_13c
    new-instance v0, Ls8/c;

    invoke-direct {v0, v9}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_142
    new-instance v0, Ls8/c;

    invoke-direct {v0, v9}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_148  #0x8
    move-object/from16 v16, v2

    move/from16 v18, v8

    iget v2, v0, Ls8/j;->P:I

    iget v8, v0, Ls8/j;->M:I

    sub-int/2addr v8, v2

    const/4 v9, 0x0

    invoke-static {v10, v2, v10, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Ls8/j;->a:Ls8/i;

    goto :goto_1a2

    :pswitch_158  #0x7
    move-object/from16 v17, v1

    move-object v1, v2

    goto/16 :goto_52a

    :pswitch_15d  #0x6
    move-object/from16 v16, v2

    move/from16 v18, v8

    const/4 v2, 0x0

    move-object/from16 v17, v1

    goto/16 :goto_38f

    :pswitch_166  #0x5
    move-object/from16 v16, v2

    move/from16 v18, v8

    iget-object v2, v0, Ls8/j;->c:Ls8/a;

    iget-object v8, v0, Ls8/j;->d:[B

    iget v9, v0, Ls8/j;->P:I

    add-int/lit8 v9, v9, -0x1

    :cond_172
    iget v11, v0, Ls8/j;->g:I

    if-lez v11, :cond_1a0

    invoke-static {v2}, Ls8/a;->d(Ls8/a;)V

    iget v11, v0, Ls8/j;->r:I

    and-int/2addr v11, v9

    const/16 v12, 0x8

    invoke-static {v2, v12}, Ls8/a;->c(Ls8/a;I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    iget v11, v0, Ls8/j;->g:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v0, Ls8/j;->g:I

    iget v11, v0, Ls8/j;->r:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Ls8/j;->r:I

    and-int/2addr v11, v9

    if-ne v11, v9, :cond_172

    iput-object v1, v0, Ls8/j;->b:Ls8/i;

    iget v2, v0, Ls8/j;->P:I

    iput v2, v0, Ls8/j;->X:I

    const/4 v2, 0x0

    iput v2, v0, Ls8/j;->W:I

    iput-object v6, v0, Ls8/j;->a:Ls8/i;

    goto :goto_1a2

    :cond_1a0
    iput-object v3, v0, Ls8/j;->a:Ls8/i;

    :goto_1a2
    move-object/from16 v17, v1

    goto/16 :goto_31e

    :pswitch_1a6  #0x4
    move-object/from16 v16, v2

    move/from16 v18, v8

    :goto_1aa
    iget v2, v0, Ls8/j;->g:I

    if-lez v2, :cond_1bd

    invoke-static {v7}, Ls8/a;->d(Ls8/a;)V

    const/16 v2, 0x8

    invoke-static {v7, v2}, Ls8/a;->c(Ls8/a;I)I

    iget v2, v0, Ls8/j;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Ls8/j;->g:I

    goto :goto_1aa

    :cond_1bd
    const/4 v2, 0x1

    iput-object v3, v0, Ls8/j;->a:Ls8/i;

    move-object/from16 v17, v1

    move v9, v2

    move-object/from16 v1, v16

    move/from16 v8, v18

    goto/16 :goto_71b

    :pswitch_1c9  #0x3
    move-object/from16 v16, v2

    move/from16 v18, v8

    move-object/from16 v17, v1

    goto/16 :goto_310

    :pswitch_1d1  #0x2
    move-object/from16 v16, v2

    move/from16 v18, v8

    const/4 v2, 0x1

    iget-object v8, v0, Ls8/j;->c:Ls8/a;

    const/4 v11, 0x0

    :goto_1d9
    const/4 v12, 0x3

    if-ge v11, v12, :cond_21e

    iget-object v12, v0, Ls8/j;->o:[I

    invoke-static {v8}, Ls8/e;->d(Ls8/a;)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v12, v11

    iget-object v12, v0, Ls8/j;->n:[I

    const/high16 v13, 0x10000000

    aput v13, v12, v11

    iget-object v12, v0, Ls8/j;->o:[I

    aget v13, v12, v11

    if-le v13, v2, :cond_21a

    aget v2, v12, v11

    add-int/lit8 v2, v2, 0x2

    iget-object v12, v0, Ls8/j;->e:[I

    mul-int/lit16 v13, v11, 0x438

    invoke-static {v2, v12, v13, v8}, Ls8/e;->f(I[IILs8/a;)V

    const/16 v2, 0x1a

    iget-object v12, v0, Ls8/j;->f:[I

    invoke-static {v2, v12, v13, v8}, Ls8/e;->f(I[IILs8/a;)V

    iget-object v2, v0, Ls8/j;->n:[I

    iget-object v12, v0, Ls8/j;->f:[I

    invoke-static {v12, v13, v8}, Ls8/e;->g([IILs8/a;)I

    move-result v12

    sget-object v13, Ls8/h;->b:[I

    aget v13, v13, v12

    sget-object v17, Ls8/h;->a:[I

    aget v12, v17, v12

    invoke-static {v8, v13}, Ls8/a;->c(Ls8/a;I)I

    move-result v13

    add-int/2addr v13, v12

    aput v13, v2, v11

    :cond_21a
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x1

    goto :goto_1d9

    :cond_21e
    invoke-static {v8}, Ls8/a;->d(Ls8/a;)V

    const/4 v2, 0x2

    invoke-static {v8, v2}, Ls8/a;->c(Ls8/a;I)I

    move-result v2

    iput v2, v0, Ls8/j;->J:I

    invoke-static {v8, v15}, Ls8/a;->c(Ls8/a;I)I

    move-result v2

    iget v11, v0, Ls8/j;->J:I

    shl-int/2addr v2, v11

    add-int/lit8 v2, v2, 0x10

    iput v2, v0, Ls8/j;->H:I

    const/4 v12, 0x1

    shl-int v13, v12, v11

    sub-int/2addr v13, v12

    iput v13, v0, Ls8/j;->I:I

    const/16 v12, 0x30

    shl-int v11, v12, v11

    add-int/2addr v2, v11

    iget-object v11, v0, Ls8/j;->o:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    new-array v11, v11, [B

    iput-object v11, v0, Ls8/j;->y:[B

    move v11, v12

    :goto_248
    iget-object v13, v0, Ls8/j;->o:[I

    aget v15, v13, v12

    if-ge v11, v15, :cond_26c

    add-int/lit8 v15, v11, 0x60

    aget v12, v13, v12

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_256
    if-ge v11, v12, :cond_267

    iget-object v13, v0, Ls8/j;->y:[B

    const/4 v15, 0x2

    invoke-static {v8, v15}, Ls8/a;->c(Ls8/a;I)I

    move-result v15

    shl-int/lit8 v15, v15, 0x1

    int-to-byte v15, v15

    aput-byte v15, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_256

    :cond_267
    invoke-static {v8}, Ls8/a;->d(Ls8/a;)V

    const/4 v12, 0x0

    goto :goto_248

    :cond_26c
    aget v11, v13, v12

    shl-int/lit8 v11, v11, 0x6

    new-array v11, v11, [B

    iput-object v11, v0, Ls8/j;->z:[B

    aget v13, v13, v12

    shl-int/lit8 v13, v13, 0x6

    invoke-static {v13, v11, v8}, Ls8/e;->b(I[BLs8/a;)I

    move-result v11

    const/4 v13, 0x1

    iput-boolean v13, v0, Ls8/j;->u:Z

    move v13, v12

    :goto_280
    iget-object v15, v0, Ls8/j;->o:[I

    aget v17, v15, v12

    shl-int/lit8 v14, v17, 0x6

    if-ge v13, v14, :cond_29b

    iget-object v14, v0, Ls8/j;->z:[B

    aget-byte v14, v14, v13

    move-object/from16 v17, v1

    shr-int/lit8 v1, v13, 0x6

    if-eq v14, v1, :cond_295

    iput-boolean v12, v0, Ls8/j;->u:Z

    goto :goto_29d

    :cond_295
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x0

    move-object/from16 v1, v17

    goto :goto_280

    :cond_29b
    move-object/from16 v17, v1

    :goto_29d
    const/4 v1, 0x2

    aget v12, v15, v1

    shl-int/2addr v12, v1

    new-array v12, v12, [B

    iput-object v12, v0, Ls8/j;->G:[B

    aget v13, v15, v1

    shl-int/lit8 v1, v13, 0x2

    invoke-static {v1, v12, v8}, Ls8/e;->b(I[BLs8/a;)I

    move-result v1

    iget-object v12, v0, Ls8/j;->k:Ls8/g;

    const/16 v13, 0x100

    invoke-static {v12, v13, v11}, Ls8/g;->b(Ls8/g;II)V

    iget-object v11, v0, Ls8/j;->l:Ls8/g;

    const/16 v12, 0x2c0

    iget-object v13, v0, Ls8/j;->o:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-static {v11, v12, v13}, Ls8/g;->b(Ls8/g;II)V

    iget-object v11, v0, Ls8/j;->m:Ls8/g;

    invoke-static {v11, v2, v1}, Ls8/g;->b(Ls8/g;II)V

    iget-object v1, v0, Ls8/j;->k:Ls8/g;

    invoke-static {v1, v8}, Ls8/g;->a(Ls8/g;Ls8/a;)V

    iget-object v1, v0, Ls8/j;->l:Ls8/g;

    invoke-static {v1, v8}, Ls8/g;->a(Ls8/g;Ls8/a;)V

    iget-object v1, v0, Ls8/j;->m:Ls8/g;

    invoke-static {v1, v8}, Ls8/g;->a(Ls8/g;Ls8/a;)V

    const/4 v1, 0x0

    iput v1, v0, Ls8/j;->A:I

    iput v1, v0, Ls8/j;->B:I

    sget-object v2, Ls8/d;->b:[I

    iget-object v8, v0, Ls8/j;->y:[B

    aget-byte v11, v8, v1

    aget v11, v2, v11

    iput v11, v0, Ls8/j;->C:I

    aget-byte v8, v8, v1

    add-int/lit8 v8, v8, 0x1

    aget v2, v2, v8

    iput v2, v0, Ls8/j;->D:I

    iget-object v2, v0, Ls8/j;->k:Ls8/g;

    iget-object v2, v2, Ls8/g;->c:[I

    aget v2, v2, v1

    iput v2, v0, Ls8/j;->v:I

    iget-object v2, v0, Ls8/j;->l:Ls8/g;

    iget-object v2, v2, Ls8/g;->c:[I

    aget v2, v2, v1

    iput v2, v0, Ls8/j;->E:I

    iget-object v2, v0, Ls8/j;->p:[I

    const/4 v8, 0x4

    const/4 v11, 0x1

    aput v11, v2, v8

    const/4 v8, 0x2

    aput v11, v2, v8

    aput v11, v2, v1

    const/4 v8, 0x5

    aput v1, v2, v8

    const/4 v8, 0x3

    aput v1, v2, v8

    aput v1, v2, v11

    iput-object v5, v0, Ls8/j;->a:Ls8/i;

    :goto_310
    iget v1, v0, Ls8/j;->g:I

    if-gtz v1, :cond_324

    iget v1, v0, Ls8/j;->r:I

    const v2, 0x3fffffff  # 1.9999999f

    and-int/2addr v1, v2

    iput v1, v0, Ls8/j;->r:I

    iput-object v3, v0, Ls8/j;->a:Ls8/i;

    :goto_31e
    move-object/from16 v1, v16

    move/from16 v8, v18

    goto/16 :goto_55e

    :cond_324
    invoke-static {v7}, Ls8/a;->d(Ls8/a;)V

    iget-object v1, v0, Ls8/j;->n:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-nez v1, :cond_33e

    invoke-static {v0, v2}, Ls8/e;->a(Ls8/j;I)V

    iget-object v1, v0, Ls8/j;->l:Ls8/g;

    iget-object v1, v1, Ls8/g;->c:[I

    iget-object v8, v0, Ls8/j;->p:[I

    const/4 v11, 0x3

    aget v8, v8, v11

    aget v1, v1, v8

    iput v1, v0, Ls8/j;->E:I

    :cond_33e
    iget-object v1, v0, Ls8/j;->n:[I

    aget v8, v1, v2

    sub-int/2addr v8, v2

    aput v8, v1, v2

    iget-object v1, v0, Ls8/j;->l:Ls8/g;

    iget-object v1, v1, Ls8/g;->b:[I

    iget v2, v0, Ls8/j;->E:I

    invoke-static {v1, v2, v7}, Ls8/e;->g([IILs8/a;)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x6

    const/4 v8, 0x0

    iput v8, v0, Ls8/j;->F:I

    const/4 v8, 0x2

    if-lt v2, v8, :cond_35c

    add-int/lit8 v2, v2, -0x2

    const/4 v8, -0x1

    iput v8, v0, Ls8/j;->F:I

    :cond_35c
    sget-object v8, Ls8/h;->g:[I

    aget v8, v8, v2

    ushr-int/lit8 v11, v1, 0x3

    and-int/lit8 v11, v11, 0x7

    add-int/2addr v8, v11

    sget-object v11, Ls8/h;->h:[I

    aget v2, v11, v2

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v2, v1

    sget-object v1, Ls8/h;->c:[I

    aget v1, v1, v8

    sget-object v11, Ls8/h;->d:[I

    aget v8, v11, v8

    invoke-static {v7, v8}, Ls8/a;->c(Ls8/a;I)I

    move-result v8

    add-int/2addr v8, v1

    iput v8, v0, Ls8/j;->x:I

    sget-object v1, Ls8/h;->e:[I

    aget v1, v1, v2

    sget-object v8, Ls8/h;->f:[I

    aget v2, v8, v2

    invoke-static {v7, v2}, Ls8/a;->c(Ls8/a;I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Ls8/j;->L:I

    const/4 v2, 0x0

    iput v2, v0, Ls8/j;->w:I

    iput-object v4, v0, Ls8/j;->a:Ls8/i;

    :goto_38f
    iget-boolean v1, v0, Ls8/j;->u:Z

    if-eqz v1, :cond_3e5

    :goto_393
    iget v1, v0, Ls8/j;->w:I

    iget v8, v0, Ls8/j;->x:I

    if-ge v1, v8, :cond_3e1

    invoke-static {v7}, Ls8/a;->d(Ls8/a;)V

    iget-object v1, v0, Ls8/j;->n:[I

    aget v1, v1, v2

    if-nez v1, :cond_3a5

    invoke-static/range {p0 .. p0}, Ls8/e;->c(Ls8/j;)V

    :cond_3a5
    iget-object v1, v0, Ls8/j;->n:[I

    aget v8, v1, v2

    add-int/lit8 v8, v8, -0x1

    aput v8, v1, v2

    iget v1, v0, Ls8/j;->r:I

    and-int v1, v1, v18

    iget-object v2, v0, Ls8/j;->k:Ls8/g;

    iget-object v2, v2, Ls8/g;->b:[I

    iget v8, v0, Ls8/j;->v:I

    invoke-static {v2, v8, v7}, Ls8/e;->g([IILs8/a;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v10, v1

    iget v1, v0, Ls8/j;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ls8/j;->w:I

    iget v1, v0, Ls8/j;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Ls8/j;->r:I

    and-int v1, v1, v18

    move/from16 v8, v18

    if-ne v1, v8, :cond_3dd

    iput-object v4, v0, Ls8/j;->b:Ls8/i;

    iget v1, v0, Ls8/j;->P:I

    iput v1, v0, Ls8/j;->X:I

    const/4 v1, 0x0

    iput v1, v0, Ls8/j;->W:I

    iput-object v6, v0, Ls8/j;->a:Ls8/i;

    goto/16 :goto_45a

    :cond_3dd
    const/4 v2, 0x0

    move/from16 v18, v8

    goto :goto_393

    :cond_3e1
    move/from16 v8, v18

    goto/16 :goto_45a

    :cond_3e5
    move/from16 v8, v18

    iget v1, v0, Ls8/j;->r:I

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v8

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, -0x2

    and-int/2addr v1, v8

    aget-byte v1, v10, v1

    and-int/lit16 v1, v1, 0xff

    :goto_3f7
    iget v11, v0, Ls8/j;->w:I

    iget v12, v0, Ls8/j;->x:I

    if-ge v11, v12, :cond_45a

    invoke-static {v7}, Ls8/a;->d(Ls8/a;)V

    iget-object v11, v0, Ls8/j;->n:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-nez v11, :cond_40a

    invoke-static/range {p0 .. p0}, Ls8/e;->c(Ls8/j;)V

    :cond_40a
    iget-object v11, v0, Ls8/j;->z:[B

    iget v12, v0, Ls8/j;->A:I

    sget-object v13, Ls8/d;->a:[I

    iget v14, v0, Ls8/j;->C:I

    add-int/2addr v14, v2

    aget v14, v13, v14

    iget v15, v0, Ls8/j;->D:I

    add-int/2addr v15, v1

    aget v1, v13, v15

    or-int/2addr v1, v14

    add-int/2addr v12, v1

    aget-byte v1, v11, v12

    and-int/lit16 v1, v1, 0xff

    iget-object v11, v0, Ls8/j;->n:[I

    const/4 v12, 0x0

    aget v13, v11, v12

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v12

    iget-object v11, v0, Ls8/j;->k:Ls8/g;

    iget-object v12, v11, Ls8/g;->b:[I

    iget-object v11, v11, Ls8/g;->c:[I

    aget v1, v11, v1

    invoke-static {v12, v1, v7}, Ls8/e;->g([IILs8/a;)I

    move-result v1

    iget v11, v0, Ls8/j;->r:I

    and-int v12, v11, v8

    int-to-byte v13, v1

    aput-byte v13, v10, v12

    iget v13, v0, Ls8/j;->w:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v0, Ls8/j;->w:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Ls8/j;->r:I

    if-ne v12, v8, :cond_454

    iput-object v4, v0, Ls8/j;->b:Ls8/i;

    iget v1, v0, Ls8/j;->P:I

    iput v1, v0, Ls8/j;->X:I

    const/4 v1, 0x0

    iput v1, v0, Ls8/j;->W:I

    iput-object v6, v0, Ls8/j;->a:Ls8/i;

    goto :goto_45a

    :cond_454
    move/from16 v21, v2

    move v2, v1

    move/from16 v1, v21

    goto :goto_3f7

    :cond_45a
    :goto_45a
    iget-object v1, v0, Ls8/j;->a:Ls8/i;

    if-eq v1, v4, :cond_460

    goto/16 :goto_510

    :cond_460
    iget v1, v0, Ls8/j;->g:I

    iget v2, v0, Ls8/j;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Ls8/j;->g:I

    if-gtz v1, :cond_46d

    iput-object v5, v0, Ls8/j;->a:Ls8/i;

    goto/16 :goto_510

    :cond_46d
    iget v1, v0, Ls8/j;->F:I

    if-gez v1, :cond_4d5

    invoke-static {v7}, Ls8/a;->d(Ls8/a;)V

    iget-object v1, v0, Ls8/j;->n:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-nez v1, :cond_486

    invoke-static {v0, v2}, Ls8/e;->a(Ls8/j;I)V

    iget-object v1, v0, Ls8/j;->p:[I

    const/4 v11, 0x5

    aget v1, v1, v11

    shl-int/2addr v1, v2

    iput v1, v0, Ls8/j;->B:I

    :cond_486
    iget-object v1, v0, Ls8/j;->n:[I

    aget v11, v1, v2

    add-int/lit8 v11, v11, -0x1

    aput v11, v1, v2

    iget-object v1, v0, Ls8/j;->m:Ls8/g;

    iget-object v2, v1, Ls8/g;->b:[I

    iget-object v1, v1, Ls8/g;->c:[I

    iget-object v11, v0, Ls8/j;->G:[B

    iget v12, v0, Ls8/j;->B:I

    iget v13, v0, Ls8/j;->L:I

    const/4 v14, 0x4

    if-le v13, v14, :cond_49f

    const/4 v13, 0x3

    goto :goto_4a1

    :cond_49f
    add-int/lit8 v13, v13, -0x2

    :goto_4a1
    add-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v1, v1, v11

    invoke-static {v2, v1, v7}, Ls8/e;->g([IILs8/a;)I

    move-result v1

    iput v1, v0, Ls8/j;->F:I

    iget v2, v0, Ls8/j;->H:I

    if-lt v1, v2, :cond_4d5

    sub-int/2addr v1, v2

    iput v1, v0, Ls8/j;->F:I

    iget v11, v0, Ls8/j;->I:I

    and-int/2addr v11, v1

    iget v12, v0, Ls8/j;->J:I

    ushr-int/2addr v1, v12

    iput v1, v0, Ls8/j;->F:I

    ushr-int/lit8 v12, v1, 0x1

    add-int/lit8 v12, v12, 0x1

    and-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    shl-int/2addr v1, v12

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v2, v11

    invoke-static {v7, v12}, Ls8/a;->c(Ls8/a;I)I

    move-result v11

    add-int/2addr v11, v1

    iget v1, v0, Ls8/j;->J:I

    shl-int v1, v11, v1

    add-int/2addr v2, v1

    iput v2, v0, Ls8/j;->F:I

    :cond_4d5
    iget v1, v0, Ls8/j;->F:I

    iget-object v2, v0, Ls8/j;->q:[I

    iget v11, v0, Ls8/j;->t:I

    const/16 v12, 0x10

    if-ge v1, v12, :cond_4ee

    sget-object v12, Ls8/e;->b:[I

    aget v12, v12, v1

    add-int/2addr v12, v11

    and-int/lit8 v12, v12, 0x3

    aget v12, v2, v12

    sget-object v13, Ls8/e;->c:[I

    aget v13, v13, v1

    add-int/2addr v12, v13

    goto :goto_4f2

    :cond_4ee
    add-int/lit8 v12, v1, -0x10

    add-int/lit8 v12, v12, 0x1

    :goto_4f2
    iput v12, v0, Ls8/j;->K:I

    if-ltz v12, :cond_567

    iget v13, v0, Ls8/j;->r:I

    iget v14, v0, Ls8/j;->N:I

    if-ge v13, v14, :cond_503

    iget v15, v0, Ls8/j;->s:I

    if-eq v15, v14, :cond_503

    iput v13, v0, Ls8/j;->s:I

    goto :goto_505

    :cond_503
    iput v14, v0, Ls8/j;->s:I

    :goto_505
    and-int/2addr v13, v8

    iput v13, v0, Ls8/j;->M:I

    iget v13, v0, Ls8/j;->s:I

    if-le v12, v13, :cond_513

    sget-object v1, Ls8/i;->j:Ls8/i;

    iput-object v1, v0, Ls8/j;->a:Ls8/i;

    :goto_510
    move-object/from16 v1, v16

    goto :goto_55e

    :cond_513
    if-lez v1, :cond_51d

    and-int/lit8 v1, v11, 0x3

    aput v12, v2, v1

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Ls8/j;->t:I

    :cond_51d
    iget v1, v0, Ls8/j;->L:I

    iget v2, v0, Ls8/j;->g:I

    if-gt v1, v2, :cond_561

    const/4 v1, 0x0

    iput v1, v0, Ls8/j;->w:I

    move-object/from16 v1, v16

    iput-object v1, v0, Ls8/j;->a:Ls8/i;

    :cond_52a
    :goto_52a
    iget v2, v0, Ls8/j;->w:I

    iget v9, v0, Ls8/j;->L:I

    if-ge v2, v9, :cond_558

    iget v9, v0, Ls8/j;->r:I

    and-int v11, v9, v8

    iget v12, v0, Ls8/j;->K:I

    sub-int v12, v9, v12

    and-int/2addr v12, v8

    aget-byte v12, v10, v12

    aput-byte v12, v10, v11

    iget v12, v0, Ls8/j;->g:I

    add-int/lit8 v12, v12, -0x1

    iput v12, v0, Ls8/j;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ls8/j;->w:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Ls8/j;->r:I

    if-ne v11, v8, :cond_52a

    iput-object v1, v0, Ls8/j;->b:Ls8/i;

    iget v2, v0, Ls8/j;->P:I

    iput v2, v0, Ls8/j;->X:I

    const/4 v2, 0x0

    iput v2, v0, Ls8/j;->W:I

    iput-object v6, v0, Ls8/j;->a:Ls8/i;

    :cond_558
    iget-object v2, v0, Ls8/j;->a:Ls8/i;

    if-ne v2, v1, :cond_55e

    iput-object v5, v0, Ls8/j;->a:Ls8/i;

    :cond_55e
    :goto_55e
    const/4 v2, 0x1

    goto/16 :goto_6cc

    :cond_561
    new-instance v0, Ls8/c;

    invoke-direct {v0, v9}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_567
    new-instance v0, Ls8/c;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_56f  #0x1
    move-object/from16 v17, v1

    move-object v1, v2

    iget v2, v0, Ls8/j;->g:I

    if-ltz v2, :cond_6ce

    iget-object v2, v0, Ls8/j;->c:Ls8/a;

    iget-boolean v8, v0, Ls8/j;->h:Z

    if-eqz v8, :cond_58f

    iput-object v12, v0, Ls8/j;->b:Ls8/i;

    iget v2, v0, Ls8/j;->r:I

    iget v8, v0, Ls8/j;->P:I

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v2, v8

    iput v2, v0, Ls8/j;->X:I

    const/4 v2, 0x0

    iput v2, v0, Ls8/j;->W:I

    iput-object v6, v0, Ls8/j;->a:Ls8/i;

    const/4 v2, 0x1

    goto/16 :goto_6c5

    :cond_58f
    iget-object v8, v0, Ls8/j;->k:Ls8/g;

    const/4 v9, 0x0

    iput-object v9, v8, Ls8/g;->b:[I

    iput-object v9, v8, Ls8/g;->c:[I

    iget-object v8, v0, Ls8/j;->l:Ls8/g;

    iput-object v9, v8, Ls8/g;->b:[I

    iput-object v9, v8, Ls8/g;->c:[I

    iget-object v8, v0, Ls8/j;->m:Ls8/g;

    iput-object v9, v8, Ls8/g;->b:[I

    iput-object v9, v8, Ls8/g;->c:[I

    invoke-static {v2}, Ls8/a;->d(Ls8/a;)V

    const/4 v8, 0x1

    invoke-static {v2, v8}, Ls8/a;->c(Ls8/a;I)I

    move-result v9

    if-ne v9, v8, :cond_5ae

    move v9, v8

    goto :goto_5af

    :cond_5ae
    const/4 v9, 0x0

    :goto_5af
    iput-boolean v9, v0, Ls8/j;->h:Z

    const/4 v10, 0x0

    iput v10, v0, Ls8/j;->g:I

    iput-boolean v10, v0, Ls8/j;->i:Z

    iput-boolean v10, v0, Ls8/j;->j:Z

    if-eqz v9, :cond_5c2

    invoke-static {v2, v8}, Ls8/a;->c(Ls8/a;I)I

    move-result v9

    if-eqz v9, :cond_5c2

    goto/16 :goto_642

    :cond_5c2
    const/4 v9, 0x2

    invoke-static {v2, v9}, Ls8/a;->c(Ls8/a;I)I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    const-string v11, "Exuberant nibble"

    const/4 v12, 0x7

    if-ne v10, v12, :cond_60a

    iput-boolean v8, v0, Ls8/j;->j:Z

    invoke-static {v2, v8}, Ls8/a;->c(Ls8/a;I)I

    move-result v8

    if-nez v8, :cond_602

    invoke-static {v2, v9}, Ls8/a;->c(Ls8/a;I)I

    move-result v8

    if-nez v8, :cond_5de

    const/4 v8, 0x1

    goto :goto_642

    :cond_5de
    const/4 v9, 0x0

    :goto_5df
    if-ge v9, v8, :cond_62c

    const/16 v10, 0x8

    invoke-static {v2, v10}, Ls8/a;->c(Ls8/a;I)I

    move-result v10

    if-nez v10, :cond_5f7

    add-int/lit8 v12, v9, 0x1

    if-ne v12, v8, :cond_5f7

    const/4 v12, 0x1

    if-gt v8, v12, :cond_5f1

    goto :goto_5f7

    :cond_5f1
    new-instance v0, Ls8/c;

    invoke-direct {v0, v11}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f7
    :goto_5f7
    iget v12, v0, Ls8/j;->g:I

    mul-int/lit8 v13, v9, 0x8

    shl-int/2addr v10, v13

    or-int/2addr v10, v12

    iput v10, v0, Ls8/j;->g:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_5df

    :cond_602
    new-instance v0, Ls8/c;

    const-string v1, "Corrupted reserved bit"

    invoke-direct {v0, v1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60a
    const/4 v8, 0x0

    :goto_60b
    if-ge v8, v10, :cond_62c

    const/4 v9, 0x4

    invoke-static {v2, v9}, Ls8/a;->c(Ls8/a;I)I

    move-result v12

    if-nez v12, :cond_621

    add-int/lit8 v13, v8, 0x1

    if-ne v13, v10, :cond_621

    if-gt v10, v9, :cond_61b

    goto :goto_621

    :cond_61b
    new-instance v0, Ls8/c;

    invoke-direct {v0, v11}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_621
    :goto_621
    iget v9, v0, Ls8/j;->g:I

    mul-int/lit8 v13, v8, 0x4

    shl-int/2addr v12, v13

    or-int/2addr v9, v12

    iput v9, v0, Ls8/j;->g:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_60b

    :cond_62c
    iget v8, v0, Ls8/j;->g:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, v0, Ls8/j;->g:I

    iget-boolean v8, v0, Ls8/j;->h:Z

    if-nez v8, :cond_641

    invoke-static {v2, v9}, Ls8/a;->c(Ls8/a;I)I

    move-result v8

    if-ne v8, v9, :cond_63e

    move v8, v9

    goto :goto_63f

    :cond_63e
    const/4 v8, 0x0

    :goto_63f
    iput-boolean v8, v0, Ls8/j;->i:Z

    :cond_641
    move v8, v9

    :goto_642
    iget v9, v0, Ls8/j;->g:I

    if-nez v9, :cond_64c

    iget-boolean v9, v0, Ls8/j;->j:Z

    if-nez v9, :cond_64c

    goto/16 :goto_6c4

    :cond_64c
    iget-boolean v9, v0, Ls8/j;->i:Z

    if-nez v9, :cond_65a

    iget-boolean v9, v0, Ls8/j;->j:Z

    if-eqz v9, :cond_655

    goto :goto_65a

    :cond_655
    sget-object v2, Ls8/i;->c:Ls8/i;

    iput-object v2, v0, Ls8/j;->a:Ls8/i;

    goto :goto_668

    :cond_65a
    :goto_65a
    invoke-static {v2}, Ls8/a;->b(Ls8/a;)V

    iget-boolean v2, v0, Ls8/j;->j:Z

    if-eqz v2, :cond_664

    sget-object v2, Ls8/i;->e:Ls8/i;

    goto :goto_666

    :cond_664
    move-object/from16 v2, v17

    :goto_666
    iput-object v2, v0, Ls8/j;->a:Ls8/i;

    :goto_668
    iget-boolean v2, v0, Ls8/j;->j:Z

    if-eqz v2, :cond_66d

    goto :goto_6c4

    :cond_66d
    iget-wide v9, v0, Ls8/j;->Q:J

    iget v2, v0, Ls8/j;->g:I

    int-to-long v11, v2

    add-long/2addr v9, v11

    iput-wide v9, v0, Ls8/j;->Q:J

    iget v2, v0, Ls8/j;->P:I

    iget v11, v0, Ls8/j;->O:I

    if-ge v2, v11, :cond_6c4

    int-to-long v12, v11

    cmp-long v2, v12, v9

    const/16 v12, 0x4000

    if-lez v2, :cond_698

    long-to-int v2, v9

    iget-object v9, v0, Ls8/j;->R:[B

    array-length v9, v9

    add-int/2addr v2, v9

    :goto_687
    shr-int/lit8 v9, v11, 0x1

    if-le v9, v2, :cond_68d

    move v11, v9

    goto :goto_687

    :cond_68d
    iget-boolean v2, v0, Ls8/j;->h:Z

    if-nez v2, :cond_698

    if-ge v11, v12, :cond_698

    iget v2, v0, Ls8/j;->O:I

    if-lt v2, v12, :cond_698

    move v11, v12

    :cond_698
    iget v2, v0, Ls8/j;->P:I

    if-gt v11, v2, :cond_69d

    goto :goto_6c4

    :cond_69d
    add-int/lit8 v9, v11, 0x25

    new-array v9, v9, [B

    iget-object v10, v0, Ls8/j;->d:[B

    if-eqz v10, :cond_6aa

    const/4 v12, 0x0

    invoke-static {v10, v12, v9, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6c0

    :cond_6aa
    const/4 v2, 0x0

    iget-object v10, v0, Ls8/j;->R:[B

    array-length v12, v10

    if-eqz v12, :cond_6c0

    array-length v12, v10

    iget v13, v0, Ls8/j;->N:I

    if-le v12, v13, :cond_6b7

    sub-int/2addr v12, v13

    goto :goto_6b9

    :cond_6b7
    move v13, v12

    move v12, v2

    :goto_6b9
    invoke-static {v10, v12, v9, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v13, v0, Ls8/j;->r:I

    iput v13, v0, Ls8/j;->S:I

    :cond_6c0
    :goto_6c0
    iput-object v9, v0, Ls8/j;->d:[B

    iput v11, v0, Ls8/j;->P:I

    :cond_6c4
    :goto_6c4
    move v2, v8

    :goto_6c5
    iget v8, v0, Ls8/j;->P:I

    add-int/lit8 v8, v8, -0x1

    iget-object v9, v0, Ls8/j;->d:[B

    move-object v10, v9

    :goto_6cc
    move v9, v2

    goto :goto_71b

    :cond_6ce
    new-instance v0, Ls8/c;

    invoke-direct {v0, v13}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d4
    move-object/from16 v17, v1

    move-object v1, v2

    iget v2, v0, Ls8/j;->S:I

    if-eqz v2, :cond_6e3

    iget v11, v0, Ls8/j;->W:I

    add-int/2addr v11, v2

    iput v11, v0, Ls8/j;->W:I

    const/4 v2, 0x0

    iput v2, v0, Ls8/j;->S:I

    :cond_6e3
    iget v2, v0, Ls8/j;->U:I

    iget v11, v0, Ls8/j;->V:I

    sub-int/2addr v2, v11

    iget v11, v0, Ls8/j;->X:I

    iget v12, v0, Ls8/j;->W:I

    sub-int/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz v2, :cond_70b

    iget-object v11, v0, Ls8/j;->d:[B

    iget v12, v0, Ls8/j;->W:I

    iget-object v13, v0, Ls8/j;->Y:[B

    iget v14, v0, Ls8/j;->T:I

    iget v15, v0, Ls8/j;->V:I

    add-int/2addr v14, v15

    invoke-static {v11, v12, v13, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v11, v0, Ls8/j;->V:I

    add-int/2addr v11, v2

    iput v11, v0, Ls8/j;->V:I

    iget v11, v0, Ls8/j;->W:I

    add-int/2addr v11, v2

    iput v11, v0, Ls8/j;->W:I

    :cond_70b
    iget v2, v0, Ls8/j;->V:I

    iget v11, v0, Ls8/j;->U:I

    if-ge v2, v11, :cond_713

    move v2, v9

    goto :goto_714

    :cond_713
    const/4 v2, 0x0

    :goto_714
    if-nez v2, :cond_717

    return-void

    :cond_717
    iget-object v2, v0, Ls8/j;->b:Ls8/i;

    iput-object v2, v0, Ls8/j;->a:Ls8/i;

    :goto_71b
    move-object v2, v1

    move-object/from16 v1, v17

    goto/16 :goto_20

    :cond_720
    if-ne v11, v12, :cond_750

    iget v1, v0, Ls8/j;->g:I

    if-ltz v1, :cond_74a

    invoke-static {v7}, Ls8/a;->b(Ls8/a;)V

    iget-object v0, v0, Ls8/j;->c:Ls8/a;

    iget-boolean v1, v0, Ls8/a;->e:Z

    if-nez v1, :cond_730

    goto :goto_750

    :cond_730
    iget v1, v0, Ls8/a;->h:I

    shl-int/lit8 v1, v1, 0x2

    iget v2, v0, Ls8/a;->g:I

    rsub-int/lit8 v2, v2, 0x40

    shr-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    iget v0, v0, Ls8/a;->i:I

    rsub-int/lit8 v0, v0, 0x40

    if-ne v1, v0, :cond_742

    goto :goto_750

    :cond_742
    new-instance v0, Ls8/c;

    const-string v1, "Read after end"

    invoke-direct {v0, v1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74a
    new-instance v0, Ls8/c;

    invoke-direct {v0, v13}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_750
    :goto_750
    return-void

    :cond_751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_762
    .packed-switch 0x1
        :pswitch_56f  #00000001
        :pswitch_1d1  #00000002
        :pswitch_1c9  #00000003
        :pswitch_1a6  #00000004
        :pswitch_166  #00000005
        :pswitch_15d  #00000006
        :pswitch_158  #00000007
        :pswitch_148  #00000008
        :pswitch_4b  #00000009
    .end packed-switch
.end method

.method public static f(I[IILs8/a;)V
    .registers 22

    move/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static/range {p3 .. p3}, Ls8/a;->d(Ls8/a;)V

    new-array v2, v0, [I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ls8/a;->c(Ls8/a;I)I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a4

    add-int/lit8 v4, v0, -0x1

    const/4 v9, 0x4

    new-array v10, v9, [I

    invoke-static {v1, v3}, Ls8/a;->c(Ls8/a;I)I

    move-result v11

    add-int/2addr v11, v8

    move v12, v7

    :goto_1e
    if-eqz v4, :cond_25

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    :cond_25
    invoke-static {v2, v7, v0}, Ls8/l;->b([III)V

    move v4, v7

    :goto_29
    if-ge v4, v11, :cond_39

    invoke-static {v1, v12}, Ls8/a;->c(Ls8/a;I)I

    move-result v13

    rem-int/2addr v13, v0

    aput v13, v10, v4

    aget v13, v10, v4

    aput v3, v2, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_39
    aget v4, v10, v7

    aput v8, v2, v4

    if-eq v11, v3, :cond_96

    if-eq v11, v6, :cond_82

    if-eq v11, v9, :cond_45

    goto/16 :goto_169

    :cond_45
    aget v4, v10, v7

    aget v9, v10, v8

    if-eq v4, v9, :cond_6b

    aget v4, v10, v7

    aget v9, v10, v3

    if-eq v4, v9, :cond_6b

    aget v4, v10, v7

    aget v9, v10, v6

    if-eq v4, v9, :cond_6b

    aget v4, v10, v8

    aget v9, v10, v3

    if-eq v4, v9, :cond_6b

    aget v4, v10, v8

    aget v9, v10, v6

    if-eq v4, v9, :cond_6b

    aget v4, v10, v3

    aget v9, v10, v6

    if-eq v4, v9, :cond_6b

    move v4, v8

    goto :goto_6c

    :cond_6b
    move v4, v7

    :goto_6c
    invoke-static {v1, v8}, Ls8/a;->c(Ls8/a;I)I

    move-result v1

    if-ne v1, v8, :cond_7b

    aget v1, v10, v3

    aput v6, v2, v1

    aget v1, v10, v6

    aput v6, v2, v1

    goto :goto_7f

    :cond_7b
    aget v1, v10, v7

    aput v3, v2, v1

    :goto_7f
    move v8, v4

    goto/16 :goto_169

    :cond_82
    aget v1, v10, v7

    aget v4, v10, v8

    if-eq v1, v4, :cond_a1

    aget v1, v10, v7

    aget v4, v10, v3

    if-eq v1, v4, :cond_a1

    aget v1, v10, v8

    aget v3, v10, v3

    if-eq v1, v3, :cond_a1

    move v7, v8

    goto :goto_a1

    :cond_96
    aget v1, v10, v7

    aget v3, v10, v8

    if-eq v1, v3, :cond_9d

    move v7, v8

    :cond_9d
    aget v1, v10, v8

    aput v8, v2, v1

    :cond_a1
    :goto_a1
    move v8, v7

    goto/16 :goto_169

    :cond_a4
    const/16 v3, 0x12

    new-array v9, v3, [I

    const/16 v10, 0x20

    move v12, v7

    move v11, v10

    :goto_ac
    const v13, 0xffff

    const/16 v14, 0x10

    if-ge v4, v3, :cond_df

    if-lez v11, :cond_df

    sget-object v15, Ls8/e;->a:[I

    aget v15, v15, v4

    invoke-static/range {p3 .. p3}, Ls8/a;->a(Ls8/a;)V

    iget-wide v5, v1, Ls8/a;->f:J

    iget v3, v1, Ls8/a;->g:I

    ushr-long/2addr v5, v3

    long-to-int v5, v5

    and-int/lit8 v5, v5, 0xf

    sget-object v6, Ls8/e;->d:[I

    aget v17, v6, v5

    shr-int/lit8 v14, v17, 0x10

    add-int/2addr v3, v14

    iput v3, v1, Ls8/a;->g:I

    aget v3, v6, v5

    and-int/2addr v3, v13

    aput v3, v9, v15

    if-eqz v3, :cond_d9

    shr-int v3, v10, v3

    sub-int/2addr v11, v3

    add-int/lit8 v12, v12, 0x1

    :cond_d9
    add-int/lit8 v4, v4, 0x1

    const/16 v3, 0x12

    const/4 v6, 0x3

    goto :goto_ac

    :cond_df
    if-eq v12, v8, :cond_e5

    if-nez v11, :cond_e4

    goto :goto_e5

    :cond_e4
    move v8, v7

    :cond_e5
    :goto_e5
    new-array v3, v10, [I

    const/4 v4, 0x5

    const/16 v5, 0x12

    invoke-static {v3, v7, v4, v9, v5}, Lv1/k;->a([III[II)V

    const v4, 0x8000

    move v6, v4

    move v5, v7

    move v10, v5

    move v11, v10

    const/16 v9, 0x8

    :goto_f6
    if-ge v5, v0, :cond_160

    if-lez v6, :cond_160

    invoke-static/range {p3 .. p3}, Ls8/a;->d(Ls8/a;)V

    invoke-static/range {p3 .. p3}, Ls8/a;->a(Ls8/a;)V

    move v15, v8

    iget-wide v7, v1, Ls8/a;->f:J

    iget v12, v1, Ls8/a;->g:I

    ushr-long/2addr v7, v12

    long-to-int v7, v7

    and-int/lit8 v7, v7, 0x1f

    aget v8, v3, v7

    shr-int/2addr v8, v14

    add-int/2addr v12, v8

    iput v12, v1, Ls8/a;->g:I

    aget v7, v3, v7

    and-int/2addr v7, v13

    if-ge v7, v14, :cond_123

    add-int/lit8 v8, v5, 0x1

    aput v7, v2, v5

    if-eqz v7, :cond_11e

    shr-int v5, v4, v7

    sub-int/2addr v6, v5

    move v9, v7

    :cond_11e
    move v5, v8

    move v8, v15

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_f6

    :cond_123
    add-int/lit8 v8, v7, -0xe

    if-ne v7, v14, :cond_129

    move v7, v9

    goto :goto_12a

    :cond_129
    const/4 v7, 0x0

    :goto_12a
    if-eq v10, v7, :cond_12e

    move v10, v7

    const/4 v11, 0x0

    :cond_12e
    if-lez v11, :cond_134

    add-int/lit8 v7, v11, -0x2

    shl-int/2addr v7, v8

    goto :goto_135

    :cond_134
    move v7, v11

    :goto_135
    invoke-static {v1, v8}, Ls8/a;->c(Ls8/a;I)I

    move-result v8

    const/4 v12, 0x3

    add-int/2addr v8, v12

    add-int/2addr v7, v8

    sub-int v8, v7, v11

    add-int v11, v5, v8

    if-gt v11, v0, :cond_158

    const/4 v11, 0x0

    :goto_143
    if-ge v11, v8, :cond_14e

    add-int/lit8 v16, v5, 0x1

    aput v10, v2, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    goto :goto_143

    :cond_14e
    if-eqz v10, :cond_154

    rsub-int/lit8 v11, v10, 0xf

    shl-int/2addr v8, v11

    sub-int/2addr v6, v8

    :cond_154
    move v11, v7

    move v8, v15

    const/4 v7, 0x0

    goto :goto_f6

    :cond_158
    new-instance v0, Ls8/c;

    const-string v1, "symbol + repeatDelta > numSymbols"

    invoke-direct {v0, v1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_160
    move v15, v8

    if-nez v6, :cond_17d

    sub-int v1, v0, v5

    invoke-static {v2, v5, v1}, Ls8/l;->b([III)V

    move v8, v15

    :goto_169
    if-eqz v8, :cond_175

    move-object/from16 v1, p1

    move/from16 v3, p2

    const/16 v4, 0x8

    invoke-static {v1, v3, v4, v2, v0}, Lv1/k;->a([III[II)V

    return-void

    :cond_175
    new-instance v0, Ls8/c;

    const-string v1, "Can\'t readHuffmanCode"

    invoke-direct {v0, v1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17d
    new-instance v0, Ls8/c;

    const-string v1, "Unused space"

    invoke-direct {v0, v1}, Ls8/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g([IILs8/a;)I
    .registers 10

    invoke-static {p2}, Ls8/a;->a(Ls8/a;)V

    iget-wide v0, p2, Ls8/a;->f:J

    iget v2, p2, Ls8/a;->g:I

    ushr-long v3, v0, v2

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p1, v3

    aget v3, p0, p1

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, -0x8

    const v4, 0xffff

    if-lez v3, :cond_2a

    add-int/lit8 v2, v2, 0x8

    iput v2, p2, Ls8/a;->g:I

    aget v5, p0, p1

    and-int/2addr v5, v4

    add-int/2addr p1, v5

    int-to-long v5, p1

    ushr-long/2addr v0, v2

    const/4 p1, 0x1

    shl-int v2, p1, v3

    sub-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    add-long/2addr v5, v0

    long-to-int p1, v5

    :cond_2a
    iget v0, p2, Ls8/a;->g:I

    aget v1, p0, p1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iput v0, p2, Ls8/a;->g:I

    aget p0, p0, p1

    and-int/2addr p0, v4

    return p0
.end method
