.class public final Lcom/oplus/pantanal/plugin/DigestUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDigestUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DigestUtils.kt\ncom/oplus/pantanal/plugin/DigestUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,75:1\n1#2:76\n13316#3,2:77\n*S KotlinDebug\n*F\n+ 1 DigestUtils.kt\ncom/oplus/pantanal/plugin/DigestUtils\n*L\n65#1:77,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final HEX_CHARS:Ljava/lang/String; = "0123456789abcdef"

.field private static final HEX_HIGH_MASK:I = 0xf0

.field private static final HEX_LOW_MASK:I = 0xf

.field private static final HEX_MASK_BITS:I = 0x4

.field public static final INSTANCE:Lcom/oplus/pantanal/plugin/DigestUtils;

.field private static final TAG:Ljava/lang/String; = "DigestUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/pantanal/plugin/DigestUtils;

    invoke-direct {v0}, Lcom/oplus/pantanal/plugin/DigestUtils;-><init>()V

    sput-object v0, Lcom/oplus/pantanal/plugin/DigestUtils;->INSTANCE:Lcom/oplus/pantanal/plugin/DigestUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sha256(Ljava/io/File;)Ljava/lang/String;
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Start sha for "

    const-string v3, "."

    invoke-static {v2, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "DigestUtils"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x1000

    const/4 v2, 0x0

    :try_start_2a
    new-array v1, v1, [B

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_83
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_31} :catch_67

    :goto_31
    :try_start_31
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    const/4 v4, -0x1

    if-eq p0, v4, :cond_3d

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_60

    goto :goto_31

    :cond_3d
    :try_start_3d
    invoke-static {v3, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v5, "DigestUtils"

    const-string v6, "Success sha 256."

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "digest.digest()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/pantanal/plugin/DigestUtils;->toHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_5f} :catch_83
    .catch Ljava/lang/IllegalStateException; {:try_start_3d .. :try_end_5f} :catch_67

    return-object p0

    :catchall_60
    move-exception p0

    :try_start_61
    throw p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception v0

    :try_start_63
    invoke-static {v3, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_83
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_67} :catch_67

    :catch_67
    move-exception p0

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IllegalStateException exception:"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "DigestUtils"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9e

    :catch_83
    move-exception p0

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IOException exception:"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "DigestUtils"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_9e
    return-object v2
.end method

.method private static final toHex([B)Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_27

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v5, "0123456789abcdef"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
