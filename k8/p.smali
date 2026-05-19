.class public final Lk8/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk8/p$b;,
        Lk8/p$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lokio/BufferedSource;

.field public final b:Lk8/p$a;

.field public final c:Z

.field public final d:Lk8/d$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lk8/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lk8/p;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/p;->a:Lokio/BufferedSource;

    iput-boolean p2, p0, Lk8/p;->c:Z

    new-instance p2, Lk8/p$a;

    invoke-direct {p2, p1}, Lk8/p$a;-><init>(Lokio/BufferedSource;)V

    iput-object p2, p0, Lk8/p;->b:Lk8/p$a;

    new-instance p1, Lk8/d$a;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Lk8/d$a;-><init>(ILokio/Source;)V

    iput-object p1, p0, Lk8/p;->d:Lk8/d$a;

    return-void
.end method

.method public static a(IBS)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-gt p2, p0, :cond_b

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Lokio/BufferedSource;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public b(ZLk8/p$b;)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, v0, Lk8/p;->a:Lokio/BufferedSource;

    const-wide/16 v4, 0x9

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->require(J)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_3af

    iget-object v3, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-static {v3}, Lk8/p;->f(Lokio/BufferedSource;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_3a0

    const/16 v6, 0x4000

    if-gt v3, v6, :cond_3a0

    iget-object v7, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readByte()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x4

    if-eqz p1, :cond_37

    if-ne v7, v8, :cond_29

    goto :goto_37

    :cond_29
    const-string v0, "Expected a SETTINGS frame but was %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_37
    :goto_37
    iget-object v9, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v9}, Lokio/BufferedSource;->readByte()B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iget-object v10, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v10}, Lokio/BufferedSource;->readInt()I

    move-result v10

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    sget-object v11, Lk8/p;->e:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v12

    if-eqz v12, :cond_5b

    invoke-static {v4, v10, v3, v7, v9}, Lk8/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5b
    const/4 v11, 0x5

    const/4 v15, 0x2

    packed-switch v7, :pswitch_data_3b0

    iget-object v0, v0, Lk8/p;->a:Lokio/BufferedSource;

    int-to-long v1, v3

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    goto/16 :goto_38d

    :pswitch_68  #0x8
    invoke-virtual {v0, v1, v3, v10}, Lk8/p;->j(Lk8/p$b;II)V

    goto/16 :goto_23c

    :pswitch_6d  #0x7
    invoke-virtual {v0, v1, v3, v10}, Lk8/p;->d(Lk8/p$b;II)V

    goto/16 :goto_23c

    :pswitch_72  #0x6
    invoke-virtual {v0, v1, v3, v9, v10}, Lk8/p;->g(Lk8/p$b;IBI)V

    goto/16 :goto_23c

    :pswitch_77  #0x5
    invoke-virtual {v0, v1, v3, v9, v10}, Lk8/p;->h(Lk8/p$b;IBI)V

    goto/16 :goto_23c

    :pswitch_7c  #0x4
    if-nez v10, :cond_122

    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_91

    if-nez v3, :cond_89

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23c

    :cond_89
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_91
    rem-int/lit8 v7, v3, 0x6

    if-nez v7, :cond_114

    new-instance v7, Lk8/u;

    invoke-direct {v7}, Lk8/u;-><init>()V

    move v9, v2

    :goto_9b
    if-ge v9, v3, :cond_ee

    iget-object v10, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v10}, Lokio/BufferedSource;->readShort()S

    move-result v10

    const v12, 0xffff

    and-int/2addr v10, v12

    iget-object v12, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v12}, Lokio/BufferedSource;->readInt()I

    move-result v12

    if-eq v10, v15, :cond_db

    const/4 v13, 0x3

    if-eq v10, v13, :cond_d9

    if-eq v10, v8, :cond_cd

    if-eq v10, v11, :cond_b7

    goto :goto_e8

    :cond_b7
    if-lt v12, v6, :cond_bf

    const v13, 0xffffff

    if-gt v12, v13, :cond_bf

    goto :goto_e8

    :cond_bf
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_cd
    const/4 v10, 0x7

    if-ltz v12, :cond_d1

    goto :goto_e8

    :cond_d1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_d9
    move v10, v8

    goto :goto_e8

    :cond_db
    if-eqz v12, :cond_e8

    if-ne v12, v4, :cond_e0

    goto :goto_e8

    :cond_e0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_e8
    :goto_e8
    invoke-virtual {v7, v10, v12}, Lk8/u;->b(II)Lk8/u;

    add-int/lit8 v9, v9, 0x6

    goto :goto_9b

    :cond_ee
    const/16 v20, 0x0

    move-object v0, v1

    check-cast v0, Lk8/g$g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_f6
    iget-object v1, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v3, v1, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lk8/n;

    const-string v18, "OkHttp %s ACK Settings"

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lk8/g;->d:Ljava/lang/String;

    aput-object v1, v6, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v21}, Lk8/n;-><init>(Lk8/g$g;Ljava/lang/String;[Ljava/lang/Object;ZLk8/u;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_112
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f6 .. :try_end_112} :catch_23c

    goto/16 :goto_23c

    :cond_114
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_122
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_12a  #0x3
    invoke-virtual {v0, v1, v3, v10}, Lk8/p;->i(Lk8/p$b;II)V

    goto/16 :goto_23c

    :pswitch_12f  #0x2
    if-ne v3, v11, :cond_14a

    if-eqz v10, :cond_142

    iget-object v2, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    iget-object v0, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23c

    :cond_142
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_14a
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "TYPE_PRIORITY length: %d != 5"

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_158  #0x1
    if-eqz v10, :cond_245

    and-int/lit8 v5, v9, 0x1

    if-eqz v5, :cond_160

    move v5, v4

    goto :goto_161

    :cond_160
    move v5, v2

    :goto_161
    and-int/lit8 v6, v9, 0x8

    if-eqz v6, :cond_16f

    iget-object v6, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readByte()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    goto :goto_170

    :cond_16f
    move v6, v2

    :goto_170
    and-int/lit8 v7, v9, 0x20

    if-eqz v7, :cond_183

    iget-object v7, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    iget-object v7, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readByte()B

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    :cond_183
    invoke-static {v3, v9, v6}, Lk8/p;->a(IBS)I

    move-result v3

    invoke-virtual {v0, v3, v6, v9, v10}, Lk8/p;->e(ISBI)Ljava/util/List;

    move-result-object v17

    move-object v0, v1

    check-cast v0, Lk8/g$g;

    iget-object v1, v0, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v1, v10}, Lk8/g;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1b9

    iget-object v0, v0, Lk8/g$g;->c:Lk8/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_19b
    new-instance v1, Lk8/j;

    const-string v14, "OkHttp %s Push Headers[%s]"

    new-array v15, v15, [Ljava/lang/Object;

    iget-object v3, v0, Lk8/g;->d:Ljava/lang/String;

    aput-object v3, v15, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v4

    move-object v12, v1

    move-object v13, v0

    move/from16 v16, v10

    move/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lk8/j;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-virtual {v0, v1}, Lk8/g;->e(Lf8/b;)V
    :try_end_1b7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_19b .. :try_end_1b7} :catch_23c

    goto/16 :goto_23c

    :cond_1b9
    iget-object v1, v0, Lk8/g$g;->c:Lk8/g;

    monitor-enter v1

    :try_start_1bc
    iget-object v3, v0, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v3, v10}, Lk8/g;->c(I)Lk8/q;

    move-result-object v3

    if-nez v3, :cond_219

    iget-object v3, v0, Lk8/g$g;->c:Lk8/g;

    iget-boolean v6, v3, Lk8/g;->g:Z

    if-eqz v6, :cond_1cd

    monitor-exit v1

    goto/16 :goto_23c

    :cond_1cd
    iget v6, v3, Lk8/g;->e:I

    if-gt v10, v6, :cond_1d3

    monitor-exit v1

    goto :goto_23c

    :cond_1d3
    rem-int/lit8 v6, v10, 0x2

    iget v3, v3, Lk8/g;->f:I

    rem-int/2addr v3, v15

    if-ne v6, v3, :cond_1dc

    monitor-exit v1

    goto :goto_23c

    :cond_1dc
    invoke-static/range {v17 .. v17}, Lf8/c;->x(Ljava/util/List;)Le8/q;

    move-result-object v17

    new-instance v3, Lk8/q;

    iget-object v14, v0, Lk8/g$g;->c:Lk8/g;

    const/4 v6, 0x0

    move-object v12, v3

    move v13, v10

    move v7, v15

    move v15, v6

    move/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lk8/q;-><init>(ILk8/g;ZZLe8/q;)V

    iget-object v5, v0, Lk8/g$g;->c:Lk8/g;

    iput v10, v5, Lk8/g;->e:I

    iget-object v5, v5, Lk8/g;->c:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lk8/g;->y:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lk8/m;

    const-string v8, "OkHttp %s stream %d"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, v0, Lk8/g$g;->c:Lk8/g;

    iget-object v9, v9, Lk8/g;->d:Ljava/lang/String;

    aput-object v9, v7, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-direct {v6, v0, v8, v7, v3}, Lk8/m;-><init>(Lk8/g$g;Ljava/lang/String;[Ljava/lang/Object;Lk8/q;)V

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1

    goto :goto_23c

    :cond_219
    monitor-exit v1
    :try_end_21a
    .catchall {:try_start_1bc .. :try_end_21a} :catchall_242

    monitor-enter v3

    :try_start_21b
    iput-boolean v4, v3, Lk8/q;->f:Z

    iget-object v0, v3, Lk8/q;->e:Ljava/util/Deque;

    invoke-static/range {v17 .. v17}, Lf8/c;->x(Ljava/util/List;)Le8/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lk8/q;->h()Z

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_22e
    .catchall {:try_start_21b .. :try_end_22e} :catchall_23f

    if-nez v0, :cond_237

    iget-object v0, v3, Lk8/q;->d:Lk8/g;

    iget v1, v3, Lk8/q;->c:I

    invoke-virtual {v0, v1}, Lk8/g;->g(I)Lk8/q;

    :cond_237
    if-eqz v5, :cond_23c

    invoke-virtual {v3}, Lk8/q;->i()V

    :catch_23c
    :cond_23c
    :goto_23c
    move v0, v4

    goto/16 :goto_39f

    :catchall_23f
    move-exception v0

    :try_start_240
    monitor-exit v3
    :try_end_241
    .catchall {:try_start_240 .. :try_end_241} :catchall_23f

    throw v0

    :catchall_242
    move-exception v0

    :try_start_243
    monitor-exit v1
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    throw v0

    :cond_245
    const-string v0, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :pswitch_24d  #0x0
    move v7, v15

    if-eqz v10, :cond_397

    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_257

    move/from16 v19, v4

    goto :goto_259

    :cond_257
    move/from16 v19, v2

    :goto_259
    and-int/lit8 v6, v9, 0x20

    if-eqz v6, :cond_25f

    move v6, v4

    goto :goto_260

    :cond_25f
    move v6, v2

    :goto_260
    if-nez v6, :cond_38f

    and-int/lit8 v5, v9, 0x8

    if-eqz v5, :cond_270

    iget-object v5, v0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    goto :goto_271

    :cond_270
    move v5, v2

    :goto_271
    invoke-static {v3, v9, v5}, Lk8/p;->a(IBS)I

    move-result v3

    iget-object v6, v0, Lk8/p;->a:Lokio/BufferedSource;

    check-cast v1, Lk8/g$g;

    iget-object v8, v1, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v8, v10}, Lk8/g;->f(I)Z

    move-result v8

    if-eqz v8, :cond_2d7

    iget-object v1, v1, Lk8/g$g;->c:Lk8/g;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lokio/Buffer;

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    int-to-long v11, v3

    invoke-interface {v6, v11, v12}, Lokio/BufferedSource;->require(J)V

    invoke-interface {v6, v8, v11, v12}, Lokio/Source;->read(Lokio/Buffer;J)J

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v13

    cmp-long v6, v13, v11

    if-nez v6, :cond_2b9

    new-instance v6, Lk8/k;

    new-array v15, v7, [Ljava/lang/Object;

    iget-object v7, v1, Lk8/g;->d:Ljava/lang/String;

    aput-object v7, v15, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v15, v4

    const-string v14, "OkHttp %s Push Data[%s]"

    move-object v12, v6

    move-object v13, v1

    move/from16 v16, v10

    move-object/from16 v17, v8

    move/from16 v18, v3

    invoke-direct/range {v12 .. v19}, Lk8/k;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-virtual {v1, v6}, Lk8/g;->e(Lf8/b;)V

    goto :goto_2ef

    :cond_2b9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d7
    iget-object v7, v1, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {v7, v10}, Lk8/g;->c(I)Lk8/q;

    move-result-object v7

    if-nez v7, :cond_2f3

    iget-object v2, v1, Lk8/g$g;->c:Lk8/g;

    sget-object v7, Lk8/b;->c:Lk8/b;

    invoke-virtual {v2, v10, v7}, Lk8/g;->l(ILk8/b;)V

    iget-object v1, v1, Lk8/g$g;->c:Lk8/g;

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Lk8/g;->i(J)V

    invoke-interface {v6, v2, v3}, Lokio/BufferedSource;->skip(J)V

    :goto_2ef
    move/from16 v16, v5

    goto/16 :goto_385

    :cond_2f3
    iget-object v1, v7, Lk8/q;->g:Lk8/q$b;

    int-to-long v8, v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f9
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_37e

    iget-object v3, v1, Lk8/q$b;->f:Lk8/q;

    monitor-enter v3

    :try_start_302
    iget-boolean v12, v1, Lk8/q$b;->e:Z

    iget-object v13, v1, Lk8/q$b;->b:Lokio/Buffer;

    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v13

    add-long/2addr v13, v8

    move/from16 v16, v5

    iget-wide v4, v1, Lk8/q$b;->c:J

    cmp-long v4, v13, v4

    if-lez v4, :cond_315

    const/4 v4, 0x1

    goto :goto_316

    :cond_315
    move v4, v2

    :goto_316
    monitor-exit v3
    :try_end_317
    .catchall {:try_start_302 .. :try_end_317} :catchall_37b

    if-eqz v4, :cond_324

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->skip(J)V

    iget-object v1, v1, Lk8/q$b;->f:Lk8/q;

    sget-object v2, Lk8/b;->e:Lk8/b;

    invoke-virtual {v1, v2}, Lk8/q;->e(Lk8/b;)V

    goto :goto_380

    :cond_324
    if-eqz v12, :cond_32a

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->skip(J)V

    goto :goto_380

    :cond_32a
    iget-object v3, v1, Lk8/q$b;->a:Lokio/Buffer;

    invoke-interface {v6, v3, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    const-wide/16 v12, -0x1

    cmp-long v5, v3, v12

    if-eqz v5, :cond_375

    sub-long/2addr v8, v3

    iget-object v3, v1, Lk8/q$b;->f:Lk8/q;

    monitor-enter v3

    :try_start_33a
    iget-boolean v4, v1, Lk8/q$b;->d:Z

    if-eqz v4, :cond_34a

    iget-object v4, v1, Lk8/q$b;->a:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    iget-object v12, v1, Lk8/q$b;->a:Lokio/Buffer;

    invoke-virtual {v12}, Lokio/Buffer;->clear()V

    goto :goto_366

    :cond_34a
    iget-object v4, v1, Lk8/q$b;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-nez v4, :cond_356

    const/4 v4, 0x1

    goto :goto_357

    :cond_356
    move v4, v2

    :goto_357
    iget-object v5, v1, Lk8/q$b;->b:Lokio/Buffer;

    iget-object v12, v1, Lk8/q$b;->a:Lokio/Buffer;

    invoke-virtual {v5, v12}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v4, :cond_365

    iget-object v4, v1, Lk8/q$b;->f:Lk8/q;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    :cond_365
    move-wide v4, v10

    :goto_366
    monitor-exit v3
    :try_end_367
    .catchall {:try_start_33a .. :try_end_367} :catchall_372

    cmp-long v3, v4, v10

    if-lez v3, :cond_36e

    invoke-virtual {v1, v4, v5}, Lk8/q$b;->a(J)V

    :cond_36e
    move/from16 v5, v16

    const/4 v4, 0x1

    goto :goto_2f9

    :catchall_372
    move-exception v0

    :try_start_373
    monitor-exit v3
    :try_end_374
    .catchall {:try_start_373 .. :try_end_374} :catchall_372

    throw v0

    :cond_375
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catchall_37b
    move-exception v0

    :try_start_37c
    monitor-exit v3
    :try_end_37d
    .catchall {:try_start_37c .. :try_end_37d} :catchall_37b

    throw v0

    :cond_37e
    move/from16 v16, v5

    :goto_380
    if-eqz v19, :cond_385

    invoke-virtual {v7}, Lk8/q;->i()V

    :cond_385
    :goto_385
    iget-object v0, v0, Lk8/p;->a:Lokio/BufferedSource;

    move/from16 v2, v16

    int-to-long v1, v2

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->skip(J)V

    :goto_38d
    const/4 v0, 0x1

    goto :goto_39f

    :cond_38f
    const-string v0, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :cond_397
    const-string v0, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :goto_39f
    return v0

    :cond_3a0
    move v0, v4

    const-string v1, "FRAME_SIZE_ERROR: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v5

    :catch_3af
    return v2

    :pswitch_data_3b0
    .packed-switch 0x0
        :pswitch_24d  #00000000
        :pswitch_158  #00000001
        :pswitch_12f  #00000002
        :pswitch_12a  #00000003
        :pswitch_7c  #00000004
        :pswitch_77  #00000005
        :pswitch_72  #00000006
        :pswitch_6d  #00000007
        :pswitch_68  #00000008
    .end packed-switch
.end method

.method public c(Lk8/p$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lk8/p;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0, v3, p1}, Lk8/p;->b(ZLk8/p$b;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_44

    :cond_e
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Required SETTINGS preface not received"

    invoke-static {p1, p0}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_16
    iget-object p0, p0, Lk8/p;->a:Lokio/BufferedSource;

    sget-object p1, Lk8/e;->a:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    sget-object v0, Lk8/p;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3e

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {p1, p0}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    :goto_44
    return-void

    :cond_45
    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "Expected a connection header but was %s"

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public final d(Lk8/p$b;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v0, :cond_93

    if-nez p3, :cond_8b

    iget-object p3, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {p3}, Lokio/BufferedSource;->readInt()I

    move-result p3

    iget-object v4, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readInt()I

    move-result v4

    sub-int/2addr p2, v0

    invoke-static {v4}, Lk8/b;->a(I)Lk8/b;

    move-result-object v0

    if-eqz v0, :cond_7d

    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-lez p2, :cond_27

    iget-object p0, p0, Lk8/p;->a:Lokio/BufferedSource;

    int-to-long v0, p2

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    :cond_27
    check-cast p1, Lk8/g$g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    monitor-enter p0

    :try_start_32
    iget-object p2, p1, Lk8/g$g;->c:Lk8/g;

    iget-object p2, p2, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    iget-object v0, p1, Lk8/g$g;->c:Lk8/g;

    iget-object v0, v0, Lk8/g;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lk8/q;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lk8/q;

    iget-object v0, p1, Lk8/g$g;->c:Lk8/g;

    iput-boolean v3, v0, Lk8/g;->g:Z

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_32 .. :try_end_4f} :catchall_7a

    array-length p0, p2

    :goto_50
    if-ge v2, p0, :cond_79

    aget-object v0, p2, v2

    iget v1, v0, Lk8/q;->c:I

    if-le v1, p3, :cond_76

    invoke-virtual {v0}, Lk8/q;->g()Z

    move-result v1

    if-eqz v1, :cond_76

    sget-object v1, Lk8/b;->f:Lk8/b;

    monitor-enter v0

    :try_start_61
    iget-object v3, v0, Lk8/q;->k:Lk8/b;

    if-nez v3, :cond_6a

    iput-object v1, v0, Lk8/q;->k:Lk8/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_73

    :cond_6a
    monitor-exit v0

    iget-object v1, p1, Lk8/g$g;->c:Lk8/g;

    iget v0, v0, Lk8/q;->c:I

    invoke-virtual {v1, v0}, Lk8/g;->g(I)Lk8/q;

    goto :goto_76

    :catchall_73
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_79
    return-void

    :catchall_7a
    move-exception p1

    :try_start_7b
    monitor-exit p0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw p1

    :cond_7d
    const-string p0, "TYPE_GOAWAY unexpected error code: %d"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_8b
    const-string p0, "TYPE_GOAWAY streamId != 0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1

    :cond_93
    const-string p0, "TYPE_GOAWAY length < 8: %s"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v1
.end method

.method public final e(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lk8/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lk8/p;->b:Lk8/p$a;

    iput p1, v0, Lk8/p$a;->e:I

    iput p1, v0, Lk8/p$a;->b:I

    iput-short p2, v0, Lk8/p$a;->f:S

    iput-byte p3, v0, Lk8/p$a;->c:B

    iput p4, v0, Lk8/p$a;->d:I

    iget-object p1, p0, Lk8/p;->d:Lk8/d$a;

    :cond_e
    :goto_e
    iget-object p2, p1, Lk8/d$a;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->exhausted()Z

    move-result p2

    if-nez p2, :cond_122

    iget-object p2, p1, Lk8/d$a;->b:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readByte()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-eq p2, p3, :cond_11a

    and-int/lit16 p4, p2, 0x80

    const/4 v0, 0x1

    if-ne p4, p3, :cond_71

    const/16 p3, 0x7f

    invoke-virtual {p1, p2, p3}, Lk8/d$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    if-ltz p2, :cond_38

    sget-object p3, Lk8/d;->a:[Lk8/c;

    array-length p3, p3

    sub-int/2addr p3, v0

    if-gt p2, p3, :cond_38

    move p3, v0

    goto :goto_39

    :cond_38
    const/4 p3, 0x0

    :goto_39
    if-eqz p3, :cond_45

    sget-object p3, Lk8/d;->a:[Lk8/c;

    aget-object p2, p3, p2

    iget-object p3, p1, Lk8/d$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_45
    sget-object p3, Lk8/d;->a:[Lk8/c;

    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lk8/d$a;->b(I)I

    move-result p3

    if-ltz p3, :cond_5d

    iget-object p4, p1, Lk8/d$a;->e:[Lk8/c;

    array-length v1, p4

    if-ge p3, v1, :cond_5d

    iget-object p2, p1, Lk8/d$a;->a:Ljava/util/List;

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_5d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Header index too large "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    const/4 p3, -0x1

    const/16 p4, 0x40

    if-ne p2, p4, :cond_8a

    invoke-virtual {p1}, Lk8/d$a;->f()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lk8/d;->a(Lokio/ByteString;)Lokio/ByteString;

    invoke-virtual {p1}, Lk8/d$a;->f()Lokio/ByteString;

    move-result-object p4

    new-instance v0, Lk8/c;

    invoke-direct {v0, p2, p4}, Lk8/c;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p1, p3, v0}, Lk8/d$a;->e(ILk8/c;)V

    goto :goto_e

    :cond_8a
    and-int/lit8 v1, p2, 0x40

    if-ne v1, p4, :cond_a7

    const/16 p4, 0x3f

    invoke-virtual {p1, p2, p4}, Lk8/d$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lk8/d$a;->d(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1}, Lk8/d$a;->f()Lokio/ByteString;

    move-result-object p4

    new-instance v0, Lk8/c;

    invoke-direct {v0, p2, p4}, Lk8/c;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-virtual {p1, p3, v0}, Lk8/d$a;->e(ILk8/c;)V

    goto/16 :goto_e

    :cond_a7
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_e1

    const/16 p3, 0x1f

    invoke-virtual {p1, p2, p3}, Lk8/d$a;->g(II)I

    move-result p2

    iput p2, p1, Lk8/d$a;->d:I

    if-ltz p2, :cond_cc

    iget p3, p1, Lk8/d$a;->c:I

    if-gt p2, p3, :cond_cc

    iget p3, p1, Lk8/d$a;->h:I

    if-ge p2, p3, :cond_e

    if-nez p2, :cond_c6

    invoke-virtual {p1}, Lk8/d$a;->a()V

    goto/16 :goto_e

    :cond_c6
    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lk8/d$a;->c(I)I

    goto/16 :goto_e

    :cond_cc
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Invalid dynamic table size update "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Lk8/d$a;->d:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e1
    const/16 p3, 0x10

    if-eq p2, p3, :cond_103

    if-nez p2, :cond_e8

    goto :goto_103

    :cond_e8
    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Lk8/d$a;->g(II)I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lk8/d$a;->d(I)Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1}, Lk8/d$a;->f()Lokio/ByteString;

    move-result-object p3

    iget-object p4, p1, Lk8/d$a;->a:Ljava/util/List;

    new-instance v0, Lk8/c;

    invoke-direct {v0, p2, p3}, Lk8/c;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_103
    :goto_103
    invoke-virtual {p1}, Lk8/d$a;->f()Lokio/ByteString;

    move-result-object p2

    invoke-static {p2}, Lk8/d;->a(Lokio/ByteString;)Lokio/ByteString;

    invoke-virtual {p1}, Lk8/d$a;->f()Lokio/ByteString;

    move-result-object p3

    iget-object p4, p1, Lk8/d$a;->a:Ljava/util/List;

    new-instance v0, Lk8/c;

    invoke-direct {v0, p2, p3}, Lk8/c;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_11a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "index == 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_122
    iget-object p0, p0, Lk8/p;->d:Lk8/d$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lk8/d$a;->a:Ljava/util/List;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lk8/d$a;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object p1
.end method

.method public final g(Lk8/p$b;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p2, v3, :cond_62

    if-nez p4, :cond_5a

    iget-object p2, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {p2}, Lokio/BufferedSource;->readInt()I

    move-result p2

    iget-object p0, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    and-int/2addr p3, v2

    if-eqz p3, :cond_19

    move v1, v2

    :cond_19
    check-cast p1, Lk8/g$g;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4d

    iget-object p3, p1, Lk8/g$g;->c:Lk8/g;

    monitor-enter p3

    const-wide/16 v0, 0x1

    if-ne p2, v2, :cond_31

    :try_start_27
    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    iget-wide p1, p0, Lk8/g;->l:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lk8/g;->l:J

    goto :goto_49

    :catchall_2f
    move-exception p0

    goto :goto_4b

    :cond_31
    const/4 p0, 0x2

    if-ne p2, p0, :cond_3c

    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    iget-wide p1, p0, Lk8/g;->n:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lk8/g;->n:J

    goto :goto_49

    :cond_3c
    const/4 p0, 0x3

    if-ne p2, p0, :cond_49

    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    iget-wide p1, p0, Lk8/g;->o:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lk8/g;->o:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_49
    :goto_49
    monitor-exit p3

    goto :goto_59

    :goto_4b
    monitor-exit p3
    :try_end_4c
    .catchall {:try_start_27 .. :try_end_4c} :catchall_2f

    throw p0

    :cond_4d
    :try_start_4d
    iget-object p1, p1, Lk8/g$g;->c:Lk8/g;

    iget-object p3, p1, Lk8/g;->h:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p4, Lk8/g$f;

    invoke-direct {p4, p1, v2, p2, p0}, Lk8/g$f;-><init>(Lk8/g;ZII)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_59
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4d .. :try_end_59} :catch_59

    :catch_59
    :goto_59
    return-void

    :cond_5a
    const-string p0, "TYPE_PING streamId != 0"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_62
    const-string p0, "TYPE_PING length != 8: %s"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final h(Lk8/p$b;IBI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_67

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_11

    iget-object v1, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    iget-object v2, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int v8, v2, v3

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v1}, Lk8/p;->a(IBS)I

    move-result p2

    invoke-virtual {p0, p2, v1, p3, p4}, Lk8/p;->e(ISBI)Ljava/util/List;

    move-result-object v9

    check-cast p1, Lk8/g$g;

    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    monitor-enter p0

    :try_start_2c
    iget-object p1, p0, Lk8/g;->x:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    sget-object p1, Lk8/b;->c:Lk8/b;

    invoke-virtual {p0, v8, p1}, Lk8/g;->l(ILk8/b;)V

    monitor-exit p0

    goto :goto_63

    :cond_3f
    iget-object p1, p0, Lk8/g;->x:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_64

    :try_start_49
    new-instance p1, Lk8/i;

    const-string v6, "OkHttp %s Push Request[%s]"

    const/4 p2, 0x2

    new-array v7, p2, [Ljava/lang/Object;

    iget-object p2, p0, Lk8/g;->d:Ljava/lang/String;

    aput-object p2, v7, v0

    const/4 p2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v7, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lk8/i;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-virtual {p0, p1}, Lk8/g;->e(Lf8/b;)V
    :try_end_63
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_49 .. :try_end_63} :catch_63

    :catch_63
    :goto_63
    return-void

    :catchall_64
    move-exception p1

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p1

    :cond_67
    const-string p0, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Lk8/p$b;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_69

    if-eqz p3, :cond_61

    iget-object p0, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    invoke-static {p0}, Lk8/b;->a(I)Lk8/b;

    move-result-object v8

    if-eqz v8, :cond_53

    check-cast p1, Lk8/g$g;

    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {p0, p3}, Lk8/g;->f(I)Z

    move-result p0

    if-eqz p0, :cond_3b

    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    new-instance p1, Lk8/l;

    const/4 p2, 0x2

    new-array v6, p2, [Ljava/lang/Object;

    iget-object p2, p0, Lk8/g;->d:Ljava/lang/String;

    aput-object p2, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v1

    const-string v5, "OkHttp %s Push Reset[%s]"

    move-object v3, p1

    move-object v4, p0

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lk8/l;-><init>(Lk8/g;Ljava/lang/String;[Ljava/lang/Object;ILk8/b;)V

    invoke-virtual {p0, p1}, Lk8/g;->e(Lf8/b;)V

    goto :goto_52

    :cond_3b
    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {p0, p3}, Lk8/g;->g(I)Lk8/q;

    move-result-object p0

    if-eqz p0, :cond_52

    monitor-enter p0

    :try_start_44
    iget-object p1, p0, Lk8/q;->k:Lk8/b;

    if-nez p1, :cond_4d

    iput-object v8, p0, Lk8/q;->k:Lk8/b;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4f

    :cond_4d
    monitor-exit p0

    goto :goto_52

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_52
    :goto_52
    return-void

    :cond_53
    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-static {p1, p2}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_61
    const-string p0, "TYPE_RST_STREAM streamId == 0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_69
    const-string p0, "TYPE_RST_STREAM length: %d != 4"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method

.method public final j(Lk8/p$b;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_54

    iget-object p0, p0, Lk8/p;->a:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/BufferedSource;->readInt()I

    move-result p0

    int-to-long v3, p0

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-eqz p0, :cond_46

    check-cast p1, Lk8/g$g;

    if-nez p3, :cond_2d

    iget-object p2, p1, Lk8/g$g;->c:Lk8/g;

    monitor-enter p2

    :try_start_1e
    iget-object p0, p1, Lk8/g$g;->c:Lk8/g;

    iget-wide v0, p0, Lk8/g;->r:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lk8/g;->r:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2

    goto :goto_45

    :catchall_2a
    move-exception p0

    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    iget-object p1, p1, Lk8/g$g;->c:Lk8/g;

    invoke-virtual {p1, p3}, Lk8/g;->c(I)Lk8/q;

    move-result-object p1

    if-eqz p1, :cond_45

    monitor-enter p1

    :try_start_36
    iget-wide p2, p1, Lk8/q;->b:J

    add-long/2addr p2, v3

    iput-wide p2, p1, Lk8/q;->b:J

    if-lez p0, :cond_40

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :cond_40
    monitor-exit p1

    goto :goto_45

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_42

    throw p0

    :cond_45
    :goto_45
    return-void

    :cond_46
    const-string p0, "windowSizeIncrement was 0"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0

    :cond_54
    const-string p0, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lk8/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v0
.end method
