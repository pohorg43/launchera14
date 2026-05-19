.class public final Lcom/android/common/util/GZipUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGZipUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GZipUtils.kt\ncom/android/common/util/GZipUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/GZipUtils;

.field private static final TAG:Ljava/lang/String; = "GZipUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/GZipUtils;

    invoke-direct {v0}, Lcom/android/common/util/GZipUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/GZipUtils;->INSTANCE:Lcom/android/common/util/GZipUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compress([B)[B
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "compress close e:"

    const/4 v1, 0x0

    const-string v2, "GZipUtils"

    if-eqz p0, :cond_88

    array-length v3, p0

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_11

    goto/16 :goto_88

    :cond_11
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_16
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_41
    .catchall {:try_start_16 .. :try_end_1b} :catchall_3f

    :try_start_1b
    invoke-virtual {v4, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_3c
    .catchall {:try_start_1b .. :try_end_1e} :catchall_39

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_25

    goto :goto_66

    :catch_25
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :catchall_39
    move-exception p0

    move-object v1, v4

    goto :goto_6b

    :catch_3c
    move-exception p0

    move-object v1, v4

    goto :goto_42

    :catchall_3f
    move-exception p0

    goto :goto_6b

    :catch_41
    move-exception p0

    :goto_42
    :try_start_42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compress write e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_3f

    :try_start_56
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5e} :catch_5f

    goto :goto_66

    :catch_5f
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2b

    :cond_66
    :goto_66
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :goto_6b
    :try_start_6b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_73} :catch_74

    goto :goto_87

    :catch_74
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    throw p0

    :cond_88
    :goto_88
    const-string p0, "compress bytes is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final uncompress([B)[B
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "uncompress close e:"

    const/4 v1, 0x0

    const-string v2, "GZipUtils"

    if-eqz p0, :cond_a7

    array-length v3, p0

    const/4 v4, 0x0

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    move v3, v4

    :goto_f
    if-eqz v3, :cond_13

    goto/16 :goto_a7

    :cond_13
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_1d
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_55
    .catchall {:try_start_1d .. :try_end_22} :catchall_50

    const/16 v1, 0x400

    :try_start_24
    new-array v1, v1, [B

    :goto_26
    invoke-virtual {p0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_30

    invoke-virtual {v3, v1, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_4e
    .catchall {:try_start_24 .. :try_end_2f} :catchall_86

    goto :goto_26

    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_3a

    goto :goto_81

    :catch_3a
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :catch_4e
    move-exception v1

    goto :goto_59

    :catchall_50
    move-exception p0

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    goto :goto_87

    :catch_55
    move-exception p0

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_59
    :try_start_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uncompress read e:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_86

    :try_start_6e
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_76

    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_76
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_79} :catch_7a

    goto :goto_81

    :catch_7a
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_40

    :goto_81
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_86
    move-exception v1

    :goto_87
    :try_start_87
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_8f

    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_8f
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_92} :catch_93

    goto :goto_a6

    :catch_93
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a6
    throw v1

    :cond_a7
    :goto_a7
    const-string/jumbo p0, "uncompress bytes is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
