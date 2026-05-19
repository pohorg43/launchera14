.class public final Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/pantanal/log/common/ILog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p9

    if-nez p10, :cond_3f

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v6, v2

    goto :goto_c

    :cond_b
    move v6, p3

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_14

    const-string v1, ""

    move-object v7, v1

    goto :goto_16

    :cond_14
    move-object/from16 v7, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1c

    move v8, v2

    goto :goto_1e

    :cond_1c
    move/from16 v8, p5

    :goto_1e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    move v9, v1

    goto :goto_27

    :cond_25
    move/from16 v9, p6

    :goto_27
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2d

    move v10, v2

    goto :goto_2f

    :cond_2d
    move/from16 v10, p7

    :goto_2f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_38

    :cond_36
    move-object/from16 v11, p8

    :goto_38
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/oplus/pantanal/log/common/ILog;->d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: d"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p9

    if-nez p10, :cond_3f

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v6, v2

    goto :goto_c

    :cond_b
    move v6, p3

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_14

    const-string v1, ""

    move-object v7, v1

    goto :goto_16

    :cond_14
    move-object/from16 v7, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1c

    move v8, v2

    goto :goto_1e

    :cond_1c
    move/from16 v8, p5

    :goto_1e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    move v9, v1

    goto :goto_27

    :cond_25
    move/from16 v9, p6

    :goto_27
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2d

    move v10, v2

    goto :goto_2f

    :cond_2d
    move/from16 v10, p7

    :goto_2f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_38

    :cond_36
    move-object/from16 v11, p8

    :goto_38
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/oplus/pantanal/log/common/ILog;->e(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: e"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p9

    if-nez p10, :cond_3f

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v6, v2

    goto :goto_c

    :cond_b
    move v6, p3

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_14

    const-string v1, ""

    move-object v7, v1

    goto :goto_16

    :cond_14
    move-object/from16 v7, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1c

    move v8, v2

    goto :goto_1e

    :cond_1c
    move/from16 v8, p5

    :goto_1e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    move v9, v1

    goto :goto_27

    :cond_25
    move/from16 v9, p6

    :goto_27
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2d

    move v10, v2

    goto :goto_2f

    :cond_2d
    move/from16 v10, p7

    :goto_2f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_38

    :cond_36
    move-object/from16 v11, p8

    :goto_38
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/oplus/pantanal/log/common/ILog;->i(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: i"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic v$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p9

    if-nez p10, :cond_3f

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v6, v2

    goto :goto_c

    :cond_b
    move v6, p3

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_14

    const-string v1, ""

    move-object v7, v1

    goto :goto_16

    :cond_14
    move-object/from16 v7, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1c

    move v8, v2

    goto :goto_1e

    :cond_1c
    move/from16 v8, p5

    :goto_1e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    move v9, v1

    goto :goto_27

    :cond_25
    move/from16 v9, p6

    :goto_27
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2d

    move v10, v2

    goto :goto_2f

    :cond_2d
    move/from16 v10, p7

    :goto_2f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_38

    :cond_36
    move-object/from16 v11, p8

    :goto_38
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/oplus/pantanal/log/common/ILog;->v(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: v"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    .registers 23

    move/from16 v0, p9

    if-nez p10, :cond_3f

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    move v6, v2

    goto :goto_c

    :cond_b
    move v6, p3

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_14

    const-string v1, ""

    move-object v7, v1

    goto :goto_16

    :cond_14
    move-object/from16 v7, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1c

    move v8, v2

    goto :goto_1e

    :cond_1c
    move/from16 v8, p5

    :goto_1e
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    move v9, v1

    goto :goto_27

    :cond_25
    move/from16 v9, p6

    :goto_27
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2d

    move v10, v2

    goto :goto_2f

    :cond_2d
    move/from16 v10, p7

    :goto_2f
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_38

    :cond_36
    move-object/from16 v11, p8

    :goto_38
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v3 .. v11}, Lcom/oplus/pantanal/log/common/ILog;->w(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void

    :cond_3f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: w"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
