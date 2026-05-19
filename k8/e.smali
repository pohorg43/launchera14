.class public final Lk8/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lokio/ByteString;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    const-string v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lk8/e;->a:Lokio/ByteString;

    const-string v1, "DATA"

    const-string v2, "HEADERS"

    const-string v3, "PRIORITY"

    const-string v4, "RST_STREAM"

    const-string v5, "SETTINGS"

    const-string v6, "PUSH_PROMISE"

    const-string v7, "PING"

    const-string v8, "GOAWAY"

    const-string v9, "WINDOW_UPDATE"

    const-string v10, "CONTINUATION"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk8/e;->b:[Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lk8/e;->c:[Ljava/lang/String;

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lk8/e;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_30
    sget-object v2, Lk8/e;->d:[Ljava/lang/String;

    array-length v3, v2

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ge v1, v3, :cond_51

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "%8s"

    invoke-static {v5, v3}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_51
    sget-object v1, Lk8/e;->c:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    const-string v2, "END_STREAM"

    aput-object v2, v1, v5

    new-array v2, v5, [I

    aput v5, v2, v0

    const-string v3, "PADDED"

    const/16 v6, 0x8

    aput-object v3, v1, v6

    move v1, v0

    :goto_66
    const-string v3, "|PADDED"

    if-ge v1, v5, :cond_80

    aget v7, v2, v1

    sget-object v8, Lk8/e;->c:[Ljava/lang/String;

    or-int/lit8 v9, v7, 0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v8, v7

    invoke-static {v10, v7, v3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_80
    sget-object v1, Lk8/e;->c:[Ljava/lang/String;

    const/4 v7, 0x4

    const-string v8, "END_HEADERS"

    aput-object v8, v1, v7

    const-string v7, "PRIORITY"

    aput-object v7, v1, v4

    const/16 v4, 0x24

    const-string v7, "END_HEADERS|PRIORITY"

    aput-object v7, v1, v4

    const/4 v1, 0x3

    new-array v4, v1, [I

    fill-array-data v4, :array_ee

    move v7, v0

    :goto_98
    if-ge v7, v1, :cond_db

    aget v8, v4, v7

    move v9, v0

    :goto_9d
    if-ge v9, v5, :cond_d8

    aget v10, v2, v9

    sget-object v11, Lk8/e;->c:[Ljava/lang/String;

    or-int v12, v10, v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v11, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v14, 0x7c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v15, v11, v8

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    or-int/2addr v12, v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v11, v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v10, v11, v8

    invoke-static {v13, v10, v3}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_9d

    :cond_d8
    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    :cond_db
    :goto_db
    sget-object v1, Lk8/e;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_ed

    aget-object v2, v1, v0

    if-nez v2, :cond_ea

    sget-object v2, Lk8/e;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_ea
    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    :cond_ed
    return-void

    :array_ee
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZIIBB)Ljava/lang/String;
    .registers 14

    sget-object v0, Lk8/e;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p3, v1, :cond_a

    aget-object v0, v0, p3

    goto :goto_18

    :cond_a
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "0x%02x"

    invoke-static {v1, v0}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    const/4 v1, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-nez p4, :cond_21

    const-string p3, ""

    goto :goto_6b

    :cond_21
    if-eq p3, v5, :cond_67

    if-eq p3, v4, :cond_67

    if-eq p3, v6, :cond_5d

    const/4 v7, 0x6

    if-eq p3, v7, :cond_5d

    const/4 v7, 0x7

    if-eq p3, v7, :cond_67

    const/16 v7, 0x8

    if-eq p3, v7, :cond_67

    sget-object v7, Lk8/e;->c:[Ljava/lang/String;

    array-length v8, v7

    if-ge p4, v8, :cond_39

    aget-object v7, v7, p4

    goto :goto_3d

    :cond_39
    sget-object v7, Lk8/e;->d:[Ljava/lang/String;

    aget-object v7, v7, p4

    :goto_3d
    if-ne p3, v1, :cond_4c

    and-int/lit8 v8, p4, 0x4

    if-eqz v8, :cond_4c

    const-string p3, "HEADERS"

    const-string p4, "PUSH_PROMISE"

    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_6b

    :cond_4c
    if-nez p3, :cond_5b

    and-int/lit8 p3, p4, 0x20

    if-eqz p3, :cond_5b

    const-string p3, "PRIORITY"

    const-string p4, "COMPRESSED"

    invoke-virtual {v7, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    goto :goto_6b

    :cond_5b
    move-object p3, v7

    goto :goto_6b

    :cond_5d
    if-ne p4, v3, :cond_62

    const-string p3, "ACK"

    goto :goto_6b

    :cond_62
    sget-object p3, Lk8/e;->d:[Ljava/lang/String;

    aget-object p3, p3, p4

    goto :goto_6b

    :cond_67
    sget-object p3, Lk8/e;->d:[Ljava/lang/String;

    aget-object p3, p3, p4

    :goto_6b
    new-array p4, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_72

    const-string p0, "<<"

    goto :goto_74

    :cond_72
    const-string p0, ">>"

    :goto_74
    aput-object p0, p4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p4, v5

    aput-object v0, p4, v4

    aput-object p3, p4, v6

    const-string p0, "%s 0x%08x %5d %-13s %s"

    invoke-static {p0, p4}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lf8/c;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
