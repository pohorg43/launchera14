.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:[B

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:[B

.field public d:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->e:[B

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->f:[Ljava/lang/String;

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:[Ljava/lang/String;

    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->h:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a([B[[BI)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_86

    add-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    :goto_d
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_19

    aget-byte v8, v0, v5

    if-eq v8, v6, :cond_19

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_19
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x1

    move v9, v8

    :goto_1d
    add-int v10, v5, v9

    aget-byte v11, v0, v10

    if-eq v11, v6, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_26
    sub-int v6, v10, v5

    move/from16 v11, p2

    move v9, v3

    move v12, v9

    move v13, v12

    :goto_2d
    if-eqz v9, :cond_33

    const/16 v9, 0x2e

    move v14, v3

    goto :goto_3e

    :cond_33
    aget-object v14, v1, v11

    aget-byte v14, v14, v12

    and-int/lit16 v14, v14, 0xff

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v16

    :goto_3e
    add-int v15, v5, v13

    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v9, v15

    if-eqz v9, :cond_48

    goto :goto_58

    :cond_48
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    if-ne v13, v6, :cond_4f

    goto :goto_58

    :cond_4f
    aget-object v15, v1, v11

    array-length v15, v15

    if-ne v15, v12, :cond_84

    array-length v14, v1

    sub-int/2addr v14, v8

    if-ne v11, v14, :cond_7f

    :goto_58
    if-gez v9, :cond_5b

    goto :goto_6f

    :cond_5b
    if-lez v9, :cond_5e

    goto :goto_74

    :cond_5e
    sub-int v7, v6, v13

    aget-object v9, v1, v11

    array-length v9, v9

    sub-int/2addr v9, v12

    :goto_64
    add-int/2addr v11, v8

    array-length v12, v1

    if-ge v11, v12, :cond_6d

    aget-object v12, v1, v11

    array-length v12, v12

    add-int/2addr v9, v12

    goto :goto_64

    :cond_6d
    if-ge v9, v7, :cond_72

    :goto_6f
    add-int/lit8 v2, v5, -0x1

    goto :goto_7

    :cond_72
    if-le v9, v7, :cond_77

    :goto_74
    add-int/lit8 v4, v10, 0x1

    goto :goto_7

    :cond_77
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lf8/c;->i:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v5, v6, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_87

    :cond_7f
    add-int/lit8 v11, v11, 0x1

    move v12, v7

    move v9, v8

    goto :goto_2d

    :cond_84
    move v9, v14

    goto :goto_2d

    :cond_86
    const/4 v1, 0x0

    :goto_87
    return-object v1
.end method


# virtual methods
.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-direct {v1, v0}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    :try_start_18
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_3c

    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    monitor-enter p0

    :try_start_2e
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->d:[B

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_39

    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception p0

    invoke-static {v0}, Lf8/c;->e(Ljava/io/Closeable;)V

    throw p0
.end method
