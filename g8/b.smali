.class public final Lg8/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# instance fields
.field public final a:Lg8/e;


# direct methods
.method public constructor <init>(Lg8/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg8/b;->a:Lg8/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_42

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method public static c(Le8/z;)Le8/z;
    .registers 2

    if-eqz p0, :cond_12

    iget-object v0, p0, Le8/z;->g:Le8/b0;

    if-eqz v0, :cond_12

    new-instance v0, Le8/z$a;

    invoke-direct {v0, p0}, Le8/z$a;-><init>(Le8/z;)V

    const/4 p0, 0x0

    iput-object p0, v0, Le8/z$a;->g:Le8/b0;

    invoke-virtual {v0}, Le8/z$a;->b()Le8/z;

    move-result-object p0

    :cond_12
    return-object p0
.end method


# virtual methods
.method public intercept(Le8/s$a;)Le8/z;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lg8/b;->a:Lg8/e;

    if-eqz v1, :cond_11

    move-object/from16 v3, p1

    check-cast v3, Li8/f;

    iget-object v3, v3, Li8/f;->f:Le8/x;

    invoke-interface {v1, v3}, Lg8/e;->f(Le8/x;)Le8/z;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v5, p1

    check-cast v5, Li8/f;

    iget-object v6, v5, Li8/f;->f:Le8/x;

    if-eqz v1, :cond_8a

    iget-wide v11, v1, Le8/z;->k:J

    iget-wide v13, v1, Le8/z;->l:J

    iget-object v15, v1, Le8/z;->f:Le8/q;

    invoke-virtual {v15}, Le8/q;->g()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_36
    if-ge v9, v8, :cond_9b

    invoke-virtual {v15, v9}, Le8/q;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v9}, Le8/q;->h(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v22, v8

    const-string v8, "Date"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_51

    invoke-static {v7}, Li8/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v21, v7

    goto :goto_85

    :cond_51
    const-string v8, "Expires"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-static {v7}, Li8/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    goto :goto_85

    :cond_5e
    const-string v8, "Last-Modified"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-static {v7}, Li8/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v20, v7

    goto :goto_85

    :cond_6d
    const-string v8, "ETag"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_78

    move-object/from16 v19, v7

    goto :goto_85

    :cond_78
    const-string v8, "Age"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    const/4 v2, -0x1

    invoke-static {v7, v2}, Li8/e;->c(Ljava/lang/String;I)I

    move-result v10

    :cond_85
    :goto_85
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v22

    goto :goto_36

    :cond_8a
    const/4 v10, -0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :cond_9b
    const-string v2, "Warning"

    if-nez v1, :cond_a6

    new-instance v3, Lg8/d;

    const/4 v8, 0x0

    invoke-direct {v3, v6, v8}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    goto :goto_c8

    :cond_a6
    const/4 v8, 0x0

    iget-object v9, v6, Le8/x;->a:Le8/r;

    iget-object v9, v9, Le8/r;->a:Ljava/lang/String;

    const-string v15, "https"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bd

    iget-object v9, v1, Le8/z;->e:Le8/p;

    if-nez v9, :cond_bd

    new-instance v3, Lg8/d;

    invoke-direct {v3, v6, v8}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    goto :goto_c8

    :cond_bd
    invoke-static {v1, v6}, Lg8/d;->a(Le8/z;Le8/x;)Z

    move-result v9

    if-nez v9, :cond_cf

    new-instance v3, Lg8/d;

    invoke-direct {v3, v6, v8}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    :goto_c8
    move-object v4, v3

    move-object/from16 v25, v5

    move-object v3, v6

    :goto_cc
    const/4 v5, 0x0

    goto/16 :goto_26d

    :cond_cf
    invoke-virtual {v6}, Le8/x;->a()Le8/c;

    move-result-object v8

    iget-boolean v9, v8, Le8/c;->a:Z

    if-nez v9, :cond_264

    iget-object v9, v6, Le8/x;->c:Le8/q;

    const-string v15, "If-Modified-Since"

    invoke-virtual {v9, v15}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "If-None-Match"

    if-nez v9, :cond_ee

    iget-object v9, v6, Le8/x;->c:Le8/q;

    invoke-virtual {v9, v7}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ec

    goto :goto_ee

    :cond_ec
    const/4 v9, 0x0

    goto :goto_ef

    :cond_ee
    :goto_ee
    const/4 v9, 0x1

    :goto_ef
    if-eqz v9, :cond_f3

    goto/16 :goto_264

    :cond_f3
    invoke-virtual {v1}, Le8/z;->a()Le8/c;

    move-result-object v9

    if-eqz v16, :cond_10e

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    sub-long v5, v13, v23

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_118

    :cond_10e
    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    const-wide/16 v5, 0x0

    :goto_118
    const/4 v7, -0x1

    if-eq v10, v7, :cond_129

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v27, v9

    int-to-long v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_12b

    :cond_129
    move-object/from16 v27, v9

    :goto_12b
    sub-long v7, v13, v11

    sub-long/2addr v3, v13

    add-long/2addr v5, v7

    add-long/2addr v5, v3

    invoke-virtual {v1}, Le8/z;->a()Le8/c;

    move-result-object v3

    iget v3, v3, Le8/c;->c:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_142

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    :goto_140
    move-wide v7, v3

    goto :goto_156

    :cond_142
    if-eqz v17, :cond_15c

    if-eqz v16, :cond_14a

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    :cond_14a
    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v13

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_18e

    goto :goto_140

    :goto_156
    move-wide v3, v7

    move-object/from16 v9, v23

    const-wide/16 v7, 0x0

    goto :goto_193

    :cond_15c
    if-eqz v18, :cond_18e

    iget-object v3, v1, Le8/z;->a:Le8/x;

    iget-object v3, v3, Le8/x;->a:Le8/r;

    iget-object v4, v3, Le8/r;->g:Ljava/util/List;

    if-nez v4, :cond_168

    const/4 v3, 0x0

    goto :goto_176

    :cond_168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Le8/r;->g:Ljava/util/List;

    invoke-static {v4, v3}, Le8/r;->i(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_176
    if-nez v3, :cond_18e

    if-eqz v16, :cond_17e

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    :cond_17e
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v11, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v11, v7

    if-lez v3, :cond_190

    const-wide/16 v3, 0xa

    div-long v3, v11, v3

    goto :goto_191

    :cond_18e
    const-wide/16 v7, 0x0

    :cond_190
    move-wide v3, v7

    :goto_191
    move-object/from16 v9, v23

    :goto_193
    iget v10, v9, Le8/c;->c:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1a3

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_1a3
    iget v10, v9, Le8/c;->i:I

    if-eq v10, v11, :cond_1af

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    goto :goto_1b0

    :cond_1af
    move-wide v12, v7

    :goto_1b0
    move-object/from16 v10, v27

    iget-boolean v14, v10, Le8/c;->g:Z

    if-nez v14, :cond_1c1

    iget v9, v9, Le8/c;->h:I

    if-eq v9, v11, :cond_1c1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    :cond_1c1
    iget-boolean v9, v10, Le8/c;->a:Z

    if-nez v9, :cond_204

    add-long/2addr v12, v5

    add-long/2addr v7, v3

    cmp-long v7, v12, v7

    if-gez v7, :cond_204

    new-instance v7, Le8/z$a;

    invoke-direct {v7, v1}, Le8/z$a;-><init>(Le8/z;)V

    cmp-long v3, v12, v3

    if-ltz v3, :cond_1d9

    const-string v3, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v7, v2, v3}, Le8/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;

    :cond_1d9
    const-wide/32 v3, 0x5265c00

    cmp-long v3, v5, v3

    if-lez v3, :cond_1f5

    invoke-virtual {v1}, Le8/z;->a()Le8/c;

    move-result-object v3

    iget v3, v3, Le8/c;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1ed

    if-nez v17, :cond_1ed

    const/4 v3, 0x1

    goto :goto_1ee

    :cond_1ed
    const/4 v3, 0x0

    :goto_1ee
    if-eqz v3, :cond_1f5

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v7, v2, v3}, Le8/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;

    :cond_1f5
    new-instance v3, Lg8/d;

    invoke-virtual {v7}, Le8/z$a;->b()Le8/z;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    move-object v4, v3

    move-object/from16 v3, v26

    goto/16 :goto_26d

    :cond_204
    if-eqz v19, :cond_20b

    move-object/from16 v15, v24

    :goto_208
    move-object/from16 v3, v26

    goto :goto_215

    :cond_20b
    if-eqz v18, :cond_210

    move-object/from16 v19, v20

    goto :goto_208

    :cond_210
    if-eqz v16, :cond_25b

    move-object/from16 v19, v21

    goto :goto_208

    :goto_215
    iget-object v4, v3, Le8/x;->c:Le8/q;

    invoke-virtual {v4}, Le8/q;->f()Le8/q$a;

    move-result-object v4

    sget-object v5, Lf8/a;->a:Lf8/a;

    check-cast v5, Le8/u$a;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Le8/q$a;->a:Ljava/util/List;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Le8/x$a;

    invoke-direct {v5, v3}, Le8/x$a;-><init>(Le8/x;)V

    iget-object v4, v4, Le8/q$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v6, Le8/q$a;

    invoke-direct {v6}, Le8/q$a;-><init>()V

    iget-object v7, v6, Le8/q$a;->a:Ljava/util/List;

    invoke-static {v7, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v6, v5, Le8/x$a;->c:Le8/q$a;

    invoke-virtual {v5}, Le8/x$a;->b()Le8/x;

    move-result-object v4

    new-instance v5, Lg8/d;

    invoke-direct {v5, v4, v1}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    move-object v4, v5

    goto/16 :goto_cc

    :cond_25b
    move-object/from16 v3, v26

    new-instance v4, Lg8/d;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    goto :goto_26d

    :cond_264
    :goto_264
    move-object/from16 v25, v5

    move-object v3, v6

    const/4 v5, 0x0

    new-instance v4, Lg8/d;

    invoke-direct {v4, v3, v5}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    :goto_26d
    iget-object v6, v4, Lg8/d;->a:Le8/x;

    if-eqz v6, :cond_27e

    invoke-virtual {v3}, Le8/x;->a()Le8/c;

    move-result-object v3

    iget-boolean v3, v3, Le8/c;->j:Z

    if-eqz v3, :cond_27e

    new-instance v4, Lg8/d;

    invoke-direct {v4, v5, v5}, Lg8/d;-><init>(Le8/x;Le8/z;)V

    :cond_27e
    iget-object v3, v4, Lg8/d;->a:Le8/x;

    iget-object v6, v4, Lg8/d;->b:Le8/z;

    iget-object v7, v0, Lg8/b;->a:Lg8/e;

    if-eqz v7, :cond_289

    invoke-interface {v7, v4}, Lg8/e;->a(Lg8/d;)V

    :cond_289
    if-eqz v1, :cond_292

    if-nez v6, :cond_292

    iget-object v4, v1, Le8/z;->g:Le8/b0;

    invoke-static {v4}, Lf8/c;->e(Ljava/io/Closeable;)V

    :cond_292
    if-nez v3, :cond_2c0

    if-nez v6, :cond_2c0

    new-instance v0, Le8/z$a;

    invoke-direct {v0}, Le8/z$a;-><init>()V

    move-object/from16 v1, v25

    iget-object v1, v1, Li8/f;->f:Le8/x;

    iput-object v1, v0, Le8/z$a;->a:Le8/x;

    sget-object v1, Le8/v;->c:Le8/v;

    iput-object v1, v0, Le8/z$a;->b:Le8/v;

    const/16 v1, 0x1f8

    iput v1, v0, Le8/z$a;->c:I

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    iput-object v1, v0, Le8/z$a;->d:Ljava/lang/String;

    sget-object v1, Lf8/c;->c:Le8/b0;

    iput-object v1, v0, Le8/z$a;->g:Le8/b0;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Le8/z$a;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Le8/z$a;->l:J

    invoke-virtual {v0}, Le8/z$a;->b()Le8/z;

    move-result-object v0

    return-object v0

    :cond_2c0
    if-nez v3, :cond_2d6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Le8/z$a;

    invoke-direct {v0, v6}, Le8/z$a;-><init>(Le8/z;)V

    invoke-static {v6}, Lg8/b;->c(Le8/z;)Le8/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Le8/z$a;->c(Le8/z;)Le8/z$a;

    invoke-virtual {v0}, Le8/z$a;->b()Le8/z;

    move-result-object v0

    return-object v0

    :cond_2d6
    :try_start_2d6
    move-object/from16 v4, p1

    check-cast v4, Li8/f;

    iget-object v7, v4, Li8/f;->b:Lh8/g;

    iget-object v8, v4, Li8/f;->c:Li8/c;

    iget-object v9, v4, Li8/f;->d:Lh8/c;

    invoke-virtual {v4, v3, v7, v8, v9}, Li8/f;->b(Le8/x;Lh8/g;Li8/c;Lh8/c;)Le8/z;

    move-result-object v1
    :try_end_2e4
    .catchall {:try_start_2d6 .. :try_end_2e4} :catchall_456

    const-string v4, "networkResponse"

    if-eqz v6, :cond_3ae

    iget v7, v1, Le8/z;->c:I

    const/16 v8, 0x130

    if-ne v7, v8, :cond_3a9

    new-instance v3, Le8/z$a;

    invoke-direct {v3, v6}, Le8/z$a;-><init>(Le8/z;)V

    iget-object v5, v6, Le8/z;->f:Le8/q;

    iget-object v7, v1, Le8/z;->f:Le8/q;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Le8/q;->g()I

    move-result v9

    const/4 v10, 0x0

    :goto_303
    if-ge v10, v9, :cond_33b

    invoke-virtual {v5, v10}, Le8/q;->e(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10}, Le8/q;->h(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_31c

    const-string v13, "1"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_31c

    goto :goto_338

    :cond_31c
    invoke-static {v11}, Lg8/b;->a(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_32e

    invoke-static {v11}, Lg8/b;->b(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_32e

    invoke-virtual {v7, v11}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_338

    :cond_32e
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_338
    :goto_338
    add-int/lit8 v10, v10, 0x1

    goto :goto_303

    :cond_33b
    invoke-virtual {v7}, Le8/q;->g()I

    move-result v2

    const/4 v5, 0x0

    :goto_340
    if-ge v5, v2, :cond_363

    invoke-virtual {v7, v5}, Le8/q;->e(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lg8/b;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_360

    invoke-static {v9}, Lg8/b;->b(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_360

    invoke-virtual {v7, v5}, Le8/q;->h(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_360
    add-int/lit8 v5, v5, 0x1

    goto :goto_340

    :cond_363
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v5, Le8/q$a;

    invoke-direct {v5}, Le8/q$a;-><init>()V

    iget-object v7, v5, Le8/q$a;->a:Ljava/util/List;

    invoke-static {v7, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-object v5, v3, Le8/z$a;->f:Le8/q$a;

    iget-wide v7, v1, Le8/z;->k:J

    iput-wide v7, v3, Le8/z$a;->k:J

    iget-wide v7, v1, Le8/z;->l:J

    iput-wide v7, v3, Le8/z$a;->l:J

    invoke-static {v6}, Lg8/b;->c(Le8/z;)Le8/z;

    move-result-object v2

    invoke-virtual {v3, v2}, Le8/z$a;->c(Le8/z;)Le8/z$a;

    invoke-static {v1}, Lg8/b;->c(Le8/z;)Le8/z;

    move-result-object v2

    if-eqz v2, :cond_393

    invoke-virtual {v3, v4, v2}, Le8/z$a;->d(Ljava/lang/String;Le8/z;)V

    :cond_393
    iput-object v2, v3, Le8/z$a;->h:Le8/z;

    invoke-virtual {v3}, Le8/z$a;->b()Le8/z;

    move-result-object v2

    iget-object v1, v1, Le8/z;->g:Le8/b0;

    invoke-virtual {v1}, Le8/b0;->close()V

    iget-object v1, v0, Lg8/b;->a:Lg8/e;

    invoke-interface {v1}, Lg8/e;->d()V

    iget-object v0, v0, Lg8/b;->a:Lg8/e;

    invoke-interface {v0, v6, v2}, Lg8/e;->e(Le8/z;Le8/z;)V

    return-object v2

    :cond_3a9
    iget-object v2, v6, Le8/z;->g:Le8/b0;

    invoke-static {v2}, Lf8/c;->e(Ljava/io/Closeable;)V

    :cond_3ae
    new-instance v2, Le8/z$a;

    invoke-direct {v2, v1}, Le8/z$a;-><init>(Le8/z;)V

    invoke-static {v6}, Lg8/b;->c(Le8/z;)Le8/z;

    move-result-object v6

    invoke-virtual {v2, v6}, Le8/z$a;->c(Le8/z;)Le8/z$a;

    invoke-static {v1}, Lg8/b;->c(Le8/z;)Le8/z;

    move-result-object v1

    if-eqz v1, :cond_3c3

    invoke-virtual {v2, v4, v1}, Le8/z$a;->d(Ljava/lang/String;Le8/z;)V

    :cond_3c3
    iput-object v1, v2, Le8/z$a;->h:Le8/z;

    invoke-virtual {v2}, Le8/z$a;->b()Le8/z;

    move-result-object v1

    iget-object v2, v0, Lg8/b;->a:Lg8/e;

    if-eqz v2, :cond_455

    invoke-static {v1}, Li8/e;->b(Le8/z;)Z

    move-result v2

    if-eqz v2, :cond_420

    invoke-static {v1, v3}, Lg8/d;->a(Le8/z;Le8/x;)Z

    move-result v2

    if-eqz v2, :cond_420

    iget-object v2, v0, Lg8/b;->a:Lg8/e;

    invoke-interface {v2, v1}, Lg8/e;->c(Le8/z;)Lg8/c;

    move-result-object v2

    if-nez v2, :cond_3e2

    goto :goto_41f

    :cond_3e2
    invoke-interface {v2}, Lg8/c;->b()Lokio/Sink;

    move-result-object v3

    if-nez v3, :cond_3e9

    goto :goto_41f

    :cond_3e9
    iget-object v4, v1, Le8/z;->g:Le8/b0;

    invoke-virtual {v4}, Le8/b0;->e()Lokio/BufferedSource;

    move-result-object v4

    invoke-static {v3}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v3

    new-instance v6, Lg8/a;

    invoke-direct {v6, v0, v4, v2, v3}, Lg8/a;-><init>(Lg8/b;Lokio/BufferedSource;Lg8/c;Lokio/BufferedSink;)V

    iget-object v0, v1, Le8/z;->f:Le8/q;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_404

    move-object v2, v0

    goto :goto_405

    :cond_404
    move-object v2, v5

    :goto_405
    iget-object v0, v1, Le8/z;->g:Le8/b0;

    invoke-virtual {v0}, Le8/b0;->b()J

    move-result-wide v3

    new-instance v0, Le8/z$a;

    invoke-direct {v0, v1}, Le8/z$a;-><init>(Le8/z;)V

    new-instance v1, Li8/g;

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Li8/g;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V

    iput-object v1, v0, Le8/z$a;->g:Le8/b0;

    invoke-virtual {v0}, Le8/z$a;->b()Le8/z;

    move-result-object v1

    :goto_41f
    return-object v1

    :cond_420
    iget-object v2, v3, Le8/x;->b:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44d

    const-string v4, "PATCH"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44d

    const-string v4, "PUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44d

    const-string v4, "DELETE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44d

    const-string v4, "MOVE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44b

    goto :goto_44d

    :cond_44b
    const/4 v8, 0x0

    goto :goto_44e

    :cond_44d
    :goto_44d
    const/4 v8, 0x1

    :goto_44e
    if-eqz v8, :cond_455

    :try_start_450
    iget-object v0, v0, Lg8/b;->a:Lg8/e;

    invoke-interface {v0, v3}, Lg8/e;->b(Le8/x;)V
    :try_end_455
    .catch Ljava/io/IOException; {:try_start_450 .. :try_end_455} :catch_455

    :catch_455
    :cond_455
    return-object v1

    :catchall_456
    move-exception v0

    if-eqz v1, :cond_45e

    iget-object v1, v1, Le8/z;->g:Le8/b0;

    invoke-static {v1}, Lf8/c;->e(Ljava/io/Closeable;)V

    :cond_45e
    throw v0
.end method
