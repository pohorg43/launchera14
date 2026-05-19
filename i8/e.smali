.class public final Li8/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    return-void
.end method

.method public static a(Le8/z;)J
    .registers 3

    iget-object p0, p0, Le8/z;->f:Le8/q;

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_10

    :cond_b
    :try_start_b
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_12

    :catch_10
    :goto_10
    const-wide/16 v0, -0x1

    :goto_12
    return-wide v0
.end method

.method public static b(Le8/z;)Z
    .registers 9

    iget-object v0, p0, Le8/z;->a:Le8/x;

    iget-object v0, v0, Le8/x;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    iget v0, p0, Le8/z;->c:I

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_19

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_22

    :cond_19
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_22

    const/16 v2, 0x130

    if-eq v0, v2, :cond_22

    return v3

    :cond_22
    invoke-static {p0}, Li8/e;->a(Le8/z;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_42

    iget-object p0, p0, Le8/z;->f:Le8/q;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Le8/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_37

    goto :goto_38

    :cond_37
    const/4 p0, 0x0

    :goto_38
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    return v3
.end method

.method public static c(Ljava/lang/String;I)I
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    long-to-int p0, p0

    return p0

    :catch_19
    return p1
.end method

.method public static d(Le8/k;Le8/r;Le8/q;)V
    .registers 37

    sget-object v0, Le8/k;->a:Le8/k;

    move-object/from16 v1, p0

    if-ne v1, v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Le8/j;->j:Ljava/util/regex/Pattern;

    const-string v0, "Set-Cookie"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Le8/q;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v6, v4

    const/4 v7, 0x0

    :goto_18
    if-ge v6, v3, :cond_334

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x3b

    invoke-static {v8, v4, v11, v12}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v0

    const/16 v13, 0x3d

    invoke-static {v8, v4, v0, v13}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v14

    if-ne v14, v0, :cond_3c

    :cond_37
    :goto_37
    move-object/from16 v8, p1

    :goto_39
    move v5, v4

    goto/16 :goto_320

    :cond_3c
    invoke-static {v8, v4, v14}, Lf8/c;->y(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_37

    invoke-static/range {v16 .. v16}, Lf8/c;->q(Ljava/lang/String;)I

    move-result v15

    const/4 v5, -0x1

    if-eq v15, v5, :cond_4e

    goto :goto_37

    :cond_4e
    add-int/lit8 v14, v14, 0x1

    invoke-static {v8, v14, v0}, Lf8/c;->y(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lf8/c;->q(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v5, :cond_5b

    goto :goto_37

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    const-wide/16 v18, -0x1

    const/4 v5, 0x1

    move/from16 v22, v4

    move/from16 v23, v22

    move/from16 v25, v23

    move/from16 v24, v5

    move-wide/from16 v20, v18

    const-wide v26, 0xe677d21fdbffL

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_73
    const-wide v30, 0x7fffffffffffffffL

    const-wide/high16 v32, -0x8000000000000000L

    if-ge v0, v11, :cond_129

    invoke-static {v8, v0, v11, v12}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v14

    invoke-static {v8, v0, v14, v13}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v15

    invoke-static {v8, v0, v15}, Lf8/c;->y(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-ge v15, v14, :cond_91

    add-int/lit8 v15, v15, 0x1

    invoke-static {v8, v15, v14}, Lf8/c;->y(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_93

    :cond_91
    const-string v15, ""

    :goto_93
    const-string v12, "expires"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a4

    :try_start_9b
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v15, v4, v0}, Le8/j;->b(Ljava/lang/String;II)J

    move-result-wide v26
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_a3} :catch_123

    goto :goto_ce

    :cond_a4
    const-string v12, "max-age"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d2

    :try_start_ac
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_ac .. :try_end_b0} :catch_b7

    const-wide/16 v30, 0x0

    cmp-long v0, v20, v30

    if-gtz v0, :cond_ce

    goto :goto_c9

    :catch_b7
    move-exception v0

    move-object v12, v0

    :try_start_b9
    const-string v0, "-?\\d+"

    invoke-virtual {v15, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "-"

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    :goto_c9
    move-wide/from16 v20, v32

    goto :goto_ce

    :cond_cc
    move-wide/from16 v20, v30

    :cond_ce
    :goto_ce
    move/from16 v25, v5

    goto :goto_123

    :cond_d1
    throw v12
    :try_end_d2
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_d2} :catch_123

    :cond_d2
    const-string v12, "domain"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_103

    :try_start_da
    const-string v0, "."

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_fd

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_ec
    invoke-static {v15}, Lf8/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f7

    move-object/from16 v28, v0

    move/from16 v24, v4

    goto :goto_123

    :cond_f7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_103
    .catch Ljava/lang/IllegalArgumentException; {:try_start_da .. :try_end_103} :catch_123

    :cond_103
    const-string v12, "path"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10e

    move-object/from16 v29, v15

    goto :goto_123

    :cond_10e
    const-string v12, "secure"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_119

    move/from16 v22, v5

    goto :goto_123

    :cond_119
    const-string v12, "httponly"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_123

    move/from16 v23, v5

    :catch_123
    :cond_123
    :goto_123
    add-int/lit8 v0, v14, 0x1

    const/16 v12, 0x3b

    goto/16 :goto_73

    :cond_129
    cmp-long v0, v20, v32

    if-nez v0, :cond_132

    move-object/from16 v8, p1

    move-wide/from16 v18, v32

    goto :goto_161

    :cond_132
    cmp-long v0, v20, v18

    if-eqz v0, :cond_15d

    const-wide v11, 0x20c49ba5e353f7L

    cmp-long v0, v20, v11

    if-gtz v0, :cond_143

    const-wide/16 v11, 0x3e8

    mul-long v30, v20, v11

    :cond_143
    add-long v30, v9, v30

    cmp-long v0, v30, v9

    const-wide v8, 0xe677d21fdbffL

    if-ltz v0, :cond_158

    cmp-long v0, v30, v8

    if-lez v0, :cond_153

    goto :goto_158

    :cond_153
    move-object/from16 v8, p1

    move-wide/from16 v18, v30

    goto :goto_161

    :cond_158
    :goto_158
    move-wide/from16 v18, v8

    move-object/from16 v8, p1

    goto :goto_161

    :cond_15d
    move-object/from16 v8, p1

    move-wide/from16 v18, v26

    :goto_161
    iget-object v0, v8, Le8/r;->d:Ljava/lang/String;

    const/16 v9, 0x2e

    move-object/from16 v10, v28

    if-nez v10, :cond_16b

    move-object v10, v0

    goto :goto_19b

    :cond_16b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_172

    goto :goto_194

    :cond_172
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_196

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v5

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_196

    sget-object v11, Lf8/c;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_196

    :goto_194
    move v11, v5

    goto :goto_197

    :cond_196
    move v11, v4

    :goto_197
    if-nez v11, :cond_19b

    goto/16 :goto_39

    :cond_19b
    :goto_19b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v0, v11, :cond_2ef

    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, "\\."

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1f2

    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f2

    move v13, v4

    :goto_1c5
    :try_start_1c5
    invoke-virtual {v11}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b()V
    :try_end_1c8
    .catch Ljava/io/InterruptedIOException; {:try_start_1c5 .. :try_end_1c8} :catch_1e1
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1cd
    .catchall {:try_start_1c5 .. :try_end_1c8} :catchall_1cb

    if-eqz v13, :cond_1ff

    goto :goto_1d9

    :catchall_1cb
    move-exception v0

    goto :goto_1e8

    :catch_1cd
    move-exception v0

    move-object v14, v0

    :try_start_1cf
    sget-object v0, Ll8/g;->a:Ll8/g;

    const/4 v15, 0x5

    const-string v9, "Failed to read public suffix list"

    invoke-virtual {v0, v15, v9, v14}, Ll8/g;->m(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1d7
    .catchall {:try_start_1cf .. :try_end_1d7} :catchall_1cb

    if-eqz v13, :cond_1ff

    :goto_1d9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1ff

    :catch_1e1
    :try_start_1e1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_1cb

    move v13, v5

    const/16 v9, 0x2e

    goto :goto_1c5

    :goto_1e8
    if-eqz v13, :cond_1f1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1f1
    throw v0

    :cond_1f2
    :try_start_1f2
    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f7
    .catch Ljava/lang/InterruptedException; {:try_start_1f2 .. :try_end_1f7} :catch_1f8

    goto :goto_1ff

    :catch_1f8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1ff
    :goto_1ff
    monitor-enter v11

    :try_start_200
    iget-object v0, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz v0, :cond_2e4

    monitor-exit v11
    :try_end_205
    .catchall {:try_start_200 .. :try_end_205} :catchall_2ec

    array-length v0, v12

    new-array v9, v0, [[B

    move v13, v4

    :goto_209
    array-length v14, v12

    if-ge v13, v14, :cond_219

    aget-object v14, v12, v13

    sget-object v15, Lf8/c;->i:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    aput-object v14, v9, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_209

    :cond_219
    move v13, v4

    :goto_21a
    if-ge v13, v0, :cond_228

    iget-object v14, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v14, v9, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_225

    goto :goto_229

    :cond_225
    add-int/lit8 v13, v13, 0x1

    goto :goto_21a

    :cond_228
    const/4 v14, 0x0

    :goto_229
    if-le v0, v5, :cond_246

    invoke-virtual {v9}, [[B->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    move v15, v4

    :goto_232
    array-length v4, v13

    sub-int/2addr v4, v5

    if-ge v15, v4, :cond_246

    sget-object v4, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    aput-object v4, v13, v15

    iget-object v4, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    invoke-static {v4, v13, v15}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_243

    goto :goto_247

    :cond_243
    add-int/lit8 v15, v15, 0x1

    goto :goto_232

    :cond_246
    const/4 v4, 0x0

    :goto_247
    if-eqz v4, :cond_25a

    const/4 v13, 0x0

    :goto_24a
    add-int/lit8 v15, v0, -0x1

    if-ge v13, v15, :cond_25a

    iget-object v15, v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    invoke-static {v15, v9, v13}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a([B[[BI)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_257

    goto :goto_25b

    :cond_257
    add-int/lit8 v13, v13, 0x1

    goto :goto_24a

    :cond_25a
    const/4 v15, 0x0

    :goto_25b
    if-eqz v15, :cond_275

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\."

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_298

    :cond_275
    if-nez v14, :cond_27c

    if-nez v4, :cond_27c

    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    goto :goto_298

    :cond_27c
    if-eqz v14, :cond_285

    const-string v0, "\\."

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_287

    :cond_285
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    :goto_287
    if-eqz v4, :cond_290

    const-string v9, "\\."

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_292

    :cond_290
    sget-object v4, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    :goto_292
    array-length v9, v0

    array-length v11, v4

    if-le v9, v11, :cond_297

    goto :goto_298

    :cond_297
    move-object v0, v4

    :goto_298
    array-length v4, v12

    array-length v9, v0

    const/16 v11, 0x21

    if-ne v4, v9, :cond_2a9

    const/4 v4, 0x0

    aget-object v9, v0, v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v11, :cond_2aa

    const/4 v0, 0x0

    goto :goto_2e0

    :cond_2a9
    const/4 v4, 0x0

    :cond_2aa
    aget-object v9, v0, v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v11, :cond_2b5

    array-length v4, v12

    array-length v0, v0

    goto :goto_2b8

    :cond_2b5
    array-length v4, v12

    array-length v0, v0

    add-int/2addr v0, v5

    :goto_2b8
    sub-int/2addr v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\."

    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :goto_2c4
    array-length v11, v9

    if-ge v4, v11, :cond_2d4

    aget-object v11, v9, v4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x2e

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c4

    :cond_2d4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e0
    if-nez v0, :cond_2ef

    const/4 v5, 0x0

    goto :goto_320

    :cond_2e4
    :try_start_2e4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2ec
    move-exception v0

    monitor-exit v11
    :try_end_2ee
    .catchall {:try_start_2e4 .. :try_end_2ee} :catchall_2ec

    throw v0

    :cond_2ef
    move-object/from16 v4, v29

    if-eqz v4, :cond_300

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2fc

    goto :goto_300

    :cond_2fc
    move-object/from16 v21, v4

    const/4 v5, 0x0

    goto :goto_317

    :cond_300
    :goto_300
    invoke-virtual/range {p1 .. p1}, Le8/r;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eqz v4, :cond_312

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_315

    :cond_312
    const/4 v5, 0x0

    const-string v0, "/"

    :goto_315
    move-object/from16 v21, v0

    :goto_317
    new-instance v0, Le8/j;

    move-object v15, v0

    move-object/from16 v20, v10

    invoke-direct/range {v15 .. v25}, Le8/j;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto :goto_321

    :goto_320
    const/4 v0, 0x0

    :goto_321
    if-nez v0, :cond_324

    goto :goto_32f

    :cond_324
    if-nez v7, :cond_32c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v4

    :cond_32c
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_32f
    add-int/lit8 v6, v6, 0x1

    move v4, v5

    goto/16 :goto_18

    :cond_334
    if-eqz v7, :cond_33b

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_33f

    :cond_33b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_33f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_346

    return-void

    :cond_346
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static e(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    :goto_15
    return p1
.end method
