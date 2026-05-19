.class public Lio/branch/search/q5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le8/s;


# static fields
.field public static d:I = 0x7530


# instance fields
.field public a:Lio/branch/search/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Z

.field public c:Lio/branch/search/t5;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLio/branch/search/b;Lio/branch/search/t5;)V
    .registers 4
    .param p2  # Lio/branch/search/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/t5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/branch/search/q5;->b:Z

    iput-object p2, p0, Lio/branch/search/q5;->a:Lio/branch/search/b;

    iput-object p3, p0, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    return-void
.end method


# virtual methods
.method public final a(ILio/branch/search/t5;)I
    .registers 7

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    iget v0, p2, Lio/branch/search/t5;->c:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p1, p2, Lio/branch/search/t5;->c:I

    int-to-double p1, p1

    mul-double/2addr v0, p1

    sget p1, Lio/branch/search/q5;->d:I

    int-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr p1, p0

    return p1
.end method

.method public final a(Le8/z;)J
    .registers 4

    iget-object p1, p1, Le8/z;->f:Le8/q;

    const-string v0, "X-Branch-API-Call-Size"

    invoke-virtual {p1, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-eqz p1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_14
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_18} :catch_19

    return-wide p0

    :catch_19
    move-exception v0

    iget-object p0, p0, Lio/branch/search/q5;->a:Lio/branch/search/b;

    const-string v1, "AnalyticsAndRetryInterceptor.getApiCallSize"

    invoke-interface {p0, v1, p1, v0}, Lio/branch/search/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object p0, p0, Lio/branch/search/q5;->a:Lio/branch/search/b;

    const/4 v0, 0x0

    const-string v1, "api_calls"

    invoke-interface {p0, v1, p1, v0}, Lio/branch/search/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    :cond_a
    return-void
.end method

.method public intercept(Le8/s$a;)Le8/z;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "X-Branch-Retry"

    move-object/from16 v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Le8/x$a;

    invoke-direct {v3, v0}, Le8/x$a;-><init>(Le8/x;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v9, v6

    move v11, v7

    move v10, v8

    :goto_1d
    add-int/lit8 v12, v0, 0x1

    if-eqz v6, :cond_36

    :try_start_21
    invoke-virtual {v6}, Le8/z;->close()V

    goto :goto_36

    :catch_25
    move-exception v0

    move-object v9, v0

    goto/16 :goto_98

    :catch_29
    move-exception v0

    goto/16 :goto_a4

    :catch_2c
    move-exception v0

    goto/16 :goto_c8

    :catch_2f
    move-exception v0

    move-object v9, v0

    goto/16 :goto_d1

    :catch_33
    move-exception v0

    goto/16 :goto_d4

    :cond_36
    :goto_36
    invoke-virtual {v3, v2}, Le8/x$a;->e(Ljava/lang/String;)Le8/x$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Le8/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/x$a;

    invoke-virtual {v3}, Le8/x$a;->b()Le8/x;

    move-result-object v0

    move-object/from16 v13, p1

    check-cast v13, Li8/f;

    invoke-virtual {v13, v0}, Li8/f;->a(Le8/x;)Le8/z;

    move-result-object v6

    int-to-long v13, v10

    invoke-virtual {v1, v6}, Lio/branch/search/q5;->a(Le8/z;)J

    move-result-wide v15

    add-long/2addr v13, v15

    long-to-int v10, v13

    iget-object v0, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    iget v13, v0, Lio/branch/search/t5;->c:I

    if-lez v13, :cond_6c

    iget v0, v0, Lio/branch/search/t5;->b:I

    if-ge v12, v0, :cond_6c

    move v0, v7

    goto :goto_6d

    :cond_6c
    move v0, v8

    :goto_6d
    const/16 v13, 0x190

    iget v14, v6, Le8/z;->c:I

    if-gt v13, v14, :cond_79

    const/16 v13, 0x193

    if-gt v14, v13, :cond_79

    move v13, v7

    goto :goto_7a

    :cond_79
    move v13, v8

    :goto_7a
    if-eqz v0, :cond_d1

    const/16 v0, 0xc8

    if-eq v14, v0, :cond_d1

    if-nez v13, :cond_d1

    move-object/from16 v0, p1

    check-cast v0, Li8/f;

    iget-object v0, v0, Li8/f;->f:Le8/x;

    iget-object v0, v0, Le8/x;->a:Le8/r;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8d
    .catch Lk8/v; {:try_start_21 .. :try_end_8d} :catch_33
    .catch Ljava/net/SocketException; {:try_start_21 .. :try_end_8d} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_8d} :catch_33
    .catch Lio/branch/search/b6; {:try_start_21 .. :try_end_8d} :catch_2f
    .catch Lio/branch/search/r5$a; {:try_start_21 .. :try_end_8d} :catch_2f
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_8d} :catch_2c
    .catch Ljava/net/UnknownServiceException; {:try_start_21 .. :try_end_8d} :catch_2c
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_8d} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_8d} :catch_29
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_8d} :catch_25

    :try_start_8d
    iget-object v0, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    invoke-virtual {v1, v12, v0}, Lio/branch/search/q5;->a(ILio/branch/search/t5;)I

    move-result v0

    int-to-long v13, v0

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_97} :catch_a1
    .catch Lk8/v; {:try_start_8d .. :try_end_97} :catch_33
    .catch Ljava/net/SocketException; {:try_start_8d .. :try_end_97} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_8d .. :try_end_97} :catch_33
    .catch Lio/branch/search/b6; {:try_start_8d .. :try_end_97} :catch_2f
    .catch Lio/branch/search/r5$a; {:try_start_8d .. :try_end_97} :catch_2f
    .catch Ljava/net/UnknownHostException; {:try_start_8d .. :try_end_97} :catch_2c
    .catch Ljava/net/UnknownServiceException; {:try_start_8d .. :try_end_97} :catch_2c
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_97} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_8d .. :try_end_97} :catch_29
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_97} :catch_25

    goto :goto_a1

    :goto_98
    iget-object v0, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    invoke-virtual {v0}, Lio/branch/search/t5;->d()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_d1

    :catch_a1
    :cond_a1
    :goto_a1
    move-object v0, v6

    :goto_a2
    move-object v14, v9

    goto :goto_d6

    :goto_a4
    move-object v9, v0

    instance-of v0, v9, Ljava/io/IOException;

    if-eqz v0, :cond_a1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v13, "cancel"

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    invoke-virtual {v0}, Lio/branch/search/t5;->d()Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_d1

    :goto_c8
    move-object v9, v0

    iget-object v0, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    invoke-virtual {v0}, Lio/branch/search/t5;->d()Z

    move-result v0

    if-nez v0, :cond_a1

    :cond_d1
    :goto_d1
    move-object v0, v6

    move v11, v8

    goto :goto_a2

    :goto_d4
    move-object v14, v0

    move-object v0, v6

    :goto_d6
    iget-object v6, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    iget v6, v6, Lio/branch/search/t5;->b:I

    if-lt v12, v6, :cond_dd

    move v11, v8

    :cond_dd
    if-nez v11, :cond_126

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v1, Lio/branch/search/q5;->c:Lio/branch/search/t5;

    move-object/from16 v3, p1

    check-cast v3, Li8/f;

    iget-object v11, v3, Li8/f;->f:Le8/x;

    move v8, v10

    move v9, v12

    move-object v10, v2

    move-object v12, v0

    move-object v13, v14

    invoke-static/range {v4 .. v13}, Lio/branch/search/z5;->a(JJIILio/branch/search/t5;Le8/x;Le8/z;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v2

    instance-of v3, v14, Ljava/lang/RuntimeException;

    if-nez v3, :cond_120

    instance-of v3, v14, Ljava/io/IOException;

    if-nez v3, :cond_11a

    iget-boolean v3, v1, Lio/branch/search/q5;->b:Z

    if-eqz v3, :cond_116

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Le8/z$a;

    invoke-direct {v1, v0}, Le8/z$a;-><init>(Le8/z;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-Branch-Analytics-Payload"

    invoke-virtual {v1, v2, v0}, Le8/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Le8/z$a;

    invoke-virtual {v1}, Le8/z$a;->b()Le8/z;

    move-result-object v0

    return-object v0

    :cond_116
    invoke-virtual {v1, v2}, Lio/branch/search/q5;->a(Lorg/json/JSONObject;)V

    return-object v0

    :cond_11a
    invoke-virtual {v1, v2}, Lio/branch/search/q5;->a(Lorg/json/JSONObject;)V

    check-cast v14, Ljava/io/IOException;

    throw v14

    :cond_120
    invoke-virtual {v1, v2}, Lio/branch/search/q5;->a(Lorg/json/JSONObject;)V

    check-cast v14, Ljava/lang/RuntimeException;

    throw v14

    :cond_126
    move-object v6, v0

    move v0, v12

    move-object v9, v14

    goto/16 :goto_1d
.end method
