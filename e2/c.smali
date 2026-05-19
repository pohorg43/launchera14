.class public Le2/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 12

    const-string v0, "getMD5, close FileInputStream, e = "

    const-string v1, "getMD5, close ParcelFileDescriptor, e = "

    const/4 v2, 0x0

    const-string v3, "MD5Utils"

    if-nez p0, :cond_f

    const-string p0, "getMD5 context is null"

    invoke-static {v3, p0}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_f
    const/4 v4, 0x0

    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "r"

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_76
    .catchall {:try_start_10 .. :try_end_1a} :catchall_72

    if-eqz p0, :cond_4a

    :try_start_1c
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_47
    .catchall {:try_start_1c .. :try_end_25} :catchall_43

    :try_start_25
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_3f
    .catchall {:try_start_25 .. :try_end_2b} :catchall_fd

    const/16 v7, 0x400

    :try_start_2d
    new-array v8, v7, [B

    invoke-virtual {v6, v8, v4, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    :goto_33
    if-lez v9, :cond_4c

    invoke-virtual {v5, v8, v4, v9}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v6, v8, v4, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_3d
    .catchall {:try_start_2d .. :try_end_3c} :catchall_fd

    goto :goto_33

    :catch_3d
    move-exception v7

    goto :goto_7b

    :catch_3f
    move-exception v5

    move-object v7, v5

    move-object v5, v2

    goto :goto_7b

    :catchall_43
    move-exception p1

    move-object v6, v2

    goto/16 :goto_fe

    :catch_47
    move-exception v5

    move-object v7, v5

    goto :goto_79

    :cond_4a
    move-object v5, v2

    move-object v6, v5

    :cond_4c
    if-eqz p0, :cond_65

    :try_start_4e
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_65

    :catch_52
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    :goto_65
    if-eqz v6, :cond_c9

    :try_start_67
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_c9

    :catch_6b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_bc

    :catchall_72
    move-exception p0

    move-object v6, v2

    goto/16 :goto_100

    :catch_76
    move-exception p0

    move-object v7, p0

    move-object p0, v2

    :goto_79
    move-object v5, v2

    move-object v6, v5

    :goto_7b
    :try_start_7b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMD5 uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e = "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_7b .. :try_end_97} :catchall_fd

    if-eqz p0, :cond_b0

    :try_start_99
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_b0

    :catch_9d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    :goto_b0
    if-eqz v6, :cond_c9

    :try_start_b2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_c9

    :catch_b6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_bc
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    if-eqz v5, :cond_fc

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    if-eqz p0, :cond_fc

    array-length p1, p0

    if-nez p1, :cond_d5

    goto :goto_fc

    :cond_d5
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_dc
    array-length v0, p0

    if-ge v4, v0, :cond_f8

    aget-byte v0, p0, v4

    if-gez v0, :cond_e5

    add-int/lit16 v0, v0, 0x100

    :cond_e5
    const/16 v1, 0x10

    if-ge v0, v1, :cond_ee

    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_ee
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_dc

    :cond_f8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_fc
    :goto_fc
    return-object v2

    :catchall_fd
    move-exception p1

    :goto_fe
    move-object v2, p0

    move-object p0, p1

    :goto_100
    if-eqz v2, :cond_119

    :try_start_102
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_106

    goto :goto_119

    :catch_106
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_119
    :goto_119
    if-eqz v6, :cond_132

    :try_start_11b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_11e} :catch_11f

    goto :goto_132

    :catch_11f
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Ld2/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_132
    :goto_132
    throw p0
.end method

.method public static b(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_d

    const/16 v0, -0x41

    if-le p1, v0, :cond_9

    goto :goto_d

    :cond_9
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, -0x1

    :goto_e
    return p0
.end method

.method public static c(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_12

    const/16 v0, -0x41

    if-gt p1, v0, :cond_12

    if-le p2, v0, :cond_b

    goto :goto_12

    :cond_b
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method

.method public static d([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1d

    const/4 v2, 0x2

    if-ne p2, v2, :cond_17

    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Le2/c;->c(III)I

    move-result p0

    return p0

    :cond_17
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1d
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Le2/c;->b(II)I

    move-result p0

    return p0

    :cond_24
    const/16 p0, -0xc

    if-le v0, p0, :cond_29

    const/4 v0, -0x1

    :cond_29
    return v0
.end method

.method public static e([BII)Z
    .registers 3

    invoke-static {p0, p1, p2}, Le2/c;->g([BII)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static final f(Lkotlinx/serialization/KSerializer;Z)Lkotlinx/serialization/KSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-static {p0}, Lf2/a;->a(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static g([BII)I
    .registers 10

    :goto_0
    if-ge p1, p2, :cond_9

    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    if-lt p1, p2, :cond_e

    goto/16 :goto_7a

    :cond_e
    :goto_e
    const/4 v1, -0x1

    if-lt p1, p2, :cond_13

    goto/16 :goto_7a

    :cond_13
    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    if-gez p1, :cond_7b

    const/16 v3, -0x20

    const/16 v4, -0x41

    if-ge p1, v3, :cond_2f

    if-lt v2, p2, :cond_23

    move v0, p1

    goto :goto_7a

    :cond_23
    const/16 v3, -0x3e

    if-lt p1, v3, :cond_2d

    add-int/lit8 p1, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v4, :cond_e

    :cond_2d
    :goto_2d
    move v0, v1

    goto :goto_7a

    :cond_2f
    const/16 v5, -0x10

    if-ge p1, v5, :cond_55

    add-int/lit8 v5, p2, -0x1

    if-lt v2, v5, :cond_3c

    invoke-static {p0, v2, p2}, Le2/c;->d([BII)I

    move-result v0

    goto :goto_7a

    :cond_3c
    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p0, v2

    if-gt v2, v4, :cond_2d

    const/16 v6, -0x60

    if-ne p1, v3, :cond_48

    if-lt v2, v6, :cond_2d

    :cond_48
    const/16 v3, -0x13

    if-ne p1, v3, :cond_4e

    if-ge v2, v6, :cond_2d

    :cond_4e
    add-int/lit8 p1, v5, 0x1

    aget-byte v2, p0, v5

    if-le v2, v4, :cond_e

    goto :goto_2d

    :cond_55
    add-int/lit8 v3, p2, -0x2

    if-lt v2, v3, :cond_5e

    invoke-static {p0, v2, p2}, Le2/c;->d([BII)I

    move-result v0

    goto :goto_7a

    :cond_5e
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    if-gt v2, v4, :cond_2d

    shl-int/lit8 p1, p1, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v2, p1

    shr-int/lit8 p1, v2, 0x1e

    if-nez p1, :cond_2d

    add-int/lit8 p1, v3, 0x1

    aget-byte v2, p0, v3

    if-gt v2, v4, :cond_2d

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    if-le p1, v4, :cond_7b

    goto :goto_2d

    :goto_7a
    return v0

    :cond_7b
    move p1, v2

    goto :goto_e
.end method

.method public static final h(Lc8/b;Lz4/r;)Lkotlinx/serialization/KSerializer;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/b;",
            "Lz4/r;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lz7/w0;->b(Lz4/r;)Lz4/d;

    move-result-object v0

    invoke-interface {p1}, Lz4/r;->getArguments()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/t;

    iget-object v4, v4, Lz4/t;->b:Lz4/r;

    if-eqz v4, :cond_2b

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Star projections in type arguments are not allowed, but had "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_79

    const-string p1, "$this$serializerOrNull"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$this$compiledSerializerImpl"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p1, v1, [Lkotlinx/serialization/KSerializer;

    invoke-static {v0, p1}, Lz7/v0;->a(Lz4/d;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-eqz p1, :cond_60

    goto :goto_6f

    :cond_60
    sget-object p1, Lz7/d1;->a:Ljava/util/Map;

    const-string p1, "$this$builtinSerializerOrNull"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lz7/d1;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    :goto_6f
    if-eqz p1, :cond_73

    goto/16 :goto_245

    :cond_73
    invoke-virtual {p0, v0}, Lc8/b;->b(Lz4/d;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto/16 :goto_245

    :cond_79
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz4/r;

    invoke-static {p0, v4}, Le2/a;->e(Lc8/b;Lz4/r;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_9a
    const-class p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    goto :goto_c0

    :cond_a7
    const-class p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b4

    goto :goto_c0

    :cond_b4
    const-class p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ce

    :goto_c0
    new-instance p0, Lz7/f;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1}, Lz7/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    :goto_cb
    move-object p1, p0

    goto/16 :goto_245

    :cond_ce
    const-class p0, Ljava/util/HashSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e6

    new-instance p0, Lz7/a0;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1}, Lz7/a0;-><init>(Lkotlinx/serialization/KSerializer;)V

    goto :goto_cb

    :cond_e6
    const-class p0, Ljava/util/Set;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f3

    goto :goto_10c

    :cond_f3
    const-class p0, Ljava/util/Set;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_100

    goto :goto_10c

    :cond_100
    const-class p0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_118

    :goto_10c
    new-instance p0, Lz7/j0;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1}, Lz7/j0;-><init>(Lkotlinx/serialization/KSerializer;)V

    goto :goto_cb

    :cond_118
    const-class p0, Ljava/util/HashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_137

    new-instance p0, Lz7/y;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, v0, p1}, Lz7/y;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    goto :goto_cb

    :cond_137
    const-class p0, Ljava/util/Map;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_144

    goto :goto_15d

    :cond_144
    const-class p0, Ljava/util/Map;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_151

    goto :goto_15d

    :cond_151
    const-class p0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_170

    :goto_15d
    new-instance p0, Lz7/h0;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, v0, p1}, Lz7/h0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_cb

    :cond_170
    const-class p0, Ljava/util/Map$Entry;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const-string v4, "valueSerializer"

    const-string v5, "keySerializer"

    if-eqz p0, :cond_199

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz7/p0;

    invoke-direct {v0, p0, p1}, Lz7/p0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_227

    :cond_199
    const-class p0, Lh4/j;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1bd

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz7/u0;

    invoke-direct {v0, p0, p1}, Lz7/u0;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    goto :goto_227

    :cond_1bd
    const-class p0, Lh4/o;

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    const-string v1, "aSerializer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "bSerializer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "cSerializer"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lz7/m1;

    invoke-direct {v1, p0, v0, p1}, Lz7/m1;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    move-object p1, v1

    goto :goto_245

    :cond_1f2
    const-string p0, "rootClass"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lz4/d;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_229

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz4/r;

    invoke-interface {p0}, Lz4/r;->getClassifier()Lz4/f;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lz4/d;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    const-string v0, "kClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz7/e1;

    invoke-direct {v0, p0, p1}, Lz7/e1;-><init>(Lz4/d;Lkotlinx/serialization/KSerializer;)V

    :goto_227
    move-object p1, v0

    goto :goto_245

    :cond_229
    new-array p0, v1, [Lkotlinx/serialization/KSerializer;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Lkotlinx/serialization/KSerializer;

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/serialization/KSerializer;

    invoke-static {v0, p0}, Lz7/v0;->a(Lz4/d;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_24a

    goto/16 :goto_cb

    :goto_245
    if-eqz p1, :cond_248

    goto :goto_249

    :cond_248
    const/4 p1, 0x0

    :goto_249
    return-object p1

    :cond_24a
    const-string p0, "Can\'t find a method to construct serializer for type "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v0}, Lz4/d;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Make sure this class is marked as @Serializable or provide serializer explicitly."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
