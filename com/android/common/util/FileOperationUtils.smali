.class public final Lcom/android/common/util/FileOperationUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFileOperationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileOperationUtils.kt\ncom/android/common/util/FileOperationUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n1#2:229\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/FileOperationUtils;

.field private static final TAG:Ljava/lang/String; = "FileOperationUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/FileOperationUtils;

    invoke-direct {v0}, Lcom/android/common/util/FileOperationUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/FileOperationUtils;->INSTANCE:Lcom/android/common/util/FileOperationUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAssetBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "FileOperationUtils"

    if-eqz p0, :cond_65

    if-nez p1, :cond_8

    goto :goto_65

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_46
    .catchall {:try_start_8 .. :try_end_10} :catchall_44

    :try_start_10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq p1, v2, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAssetBytes totalLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", readLength="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_3f
    .catchall {:try_start_10 .. :try_end_38} :catchall_3c

    :cond_38
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_60

    :catchall_3c
    move-exception p1

    move-object v0, p0

    goto :goto_61

    :catch_3f
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_48

    :catchall_44
    move-exception p1

    goto :goto_61

    :catch_46
    move-exception p1

    move-object p0, v0

    :goto_48
    :try_start_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssetBytes e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_44

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, p0

    :goto_60
    return-object v0

    :goto_61
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :cond_65
    :goto_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssetBytes "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " null failed, file or context is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getContextFileBytes(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/common/util/FileOperationUtils;->getContextFileBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_28

    array-length p1, p0

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-eqz p1, :cond_19

    goto :goto_28

    :cond_19
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string p2, "forName(fileFormat)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    :cond_28
    :goto_28
    const-string p0, "FileOperationUtils"

    const-string p1, "getContextFileBytes null failed, data is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getContextFileBytes(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const-string v1, "FileOperationUtils"

    if-eqz p1, :cond_6d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_11

    goto :goto_6d

    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_4e
    .catchall {:try_start_11 .. :try_end_15} :catchall_4c

    if-eqz p0, :cond_48

    :try_start_17
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq p1, v2, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContextFileBytes totalLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", readLength="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3f} :catch_43
    .catchall {:try_start_17 .. :try_end_3f} :catchall_40

    goto :goto_48

    :catchall_40
    move-exception p1

    move-object v0, p0

    goto :goto_69

    :catch_43
    move-exception p1

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_50

    :cond_48
    :goto_48
    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_68

    :catchall_4c
    move-exception p1

    goto :goto_69

    :catch_4e
    move-exception p1

    move-object p0, v0

    :goto_50
    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContextFileBytes e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_4c

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v0, p0

    :goto_68
    return-object v0

    :goto_69
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1

    :cond_6d
    :goto_6d
    const-string p0, "getContextFileBytes null failed, file is null!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getFileContent(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "getFileContent e = "

    const-string v1, "FileOperationUtils"

    const/4 v2, 0x0

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_35

    :cond_14
    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_29

    :try_start_19
    invoke-static {v3}, Lcom/android/common/util/FileOperationUtils;->inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    :try_start_1d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v2

    invoke-static {v0, v2, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_25
    return-object p0

    :catchall_26
    move-exception p0

    move-object v2, v3

    goto :goto_2a

    :catchall_29
    move-exception p0

    :goto_2a
    if-eqz v2, :cond_34

    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v2

    invoke-static {v0, v2, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_34
    :goto_34
    throw p0

    :cond_35
    :goto_35
    return-object v2
.end method

.method public static final inputStream2String(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    :goto_e
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "baos.toByteArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lk7/b;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static final isContextFileValid(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "FileOperationUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_56

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eqz v2, :cond_17

    goto :goto_56

    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_23

    const-string p0, "isContextFileValid false failed, filesDir is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_55

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_55

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, v4, p0

    if-eqz p0, :cond_55

    move v1, v3

    :cond_55
    return v1

    :cond_56
    :goto_56
    const-string p0, "isContextFileValid false failed, file is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final saveToContextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_31

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    if-eqz v1, :cond_19

    goto :goto_31

    :cond_19
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    const-string v0, "forName(fileFormat)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string/jumbo p3, "this as java.lang.String).getBytes(charset)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/android/common/util/FileOperationUtils;->saveToContextFile(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result p0

    return p0

    :cond_31
    :goto_31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveToContextFile "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " false failed, data is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileOperationUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static final saveToContextFile(Landroid/content/Context;Ljava/lang/String;[B)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "FileOperationUtils"

    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_e

    move v2, v3

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    if-eqz v2, :cond_12

    goto :goto_5a

    :cond_12
    if-eqz p2, :cond_3f

    array-length v2, p2

    if-nez v2, :cond_19

    move v2, v3

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    if-eqz v2, :cond_1d

    goto :goto_3f

    :cond_1d
    const v2, 0x8000

    :try_start_20
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    new-array p1, v2, [B

    :goto_2b
    invoke-virtual {v4, p1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_35

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_37

    goto :goto_2b

    :cond_35
    move v1, v3

    goto :goto_3e

    :catch_37
    move-exception p0

    const-string/jumbo p1, "saveToContextFile e:"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3e
    return v1

    :cond_3f
    :goto_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "saveToContextFile "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " false failed, data is null!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5a
    :goto_5a
    const-string/jumbo p0, "saveToContextFile false failed, fileName is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final writeStringToFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "FileOperationUtils"

    if-eqz v0, :cond_10

    const-string/jumbo p0, "writeStringToFile, content is empty or null."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo p0, "writeStringToFile, filePath is empty or null."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeStringToFile, isReplace = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz p2, :cond_de

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_5b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeStringToFile, delete failed. file = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_80

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile, mkdirs failed. tmp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    const/4 p2, 0x0

    :try_start_81
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_86} :catch_b1
    .catchall {:try_start_81 .. :try_end_86} :catchall_ad

    :try_start_86
    new-instance v0, Ljava/io/OutputStreamWriter;

    sget-object v4, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_aa
    .catchall {:try_start_86 .. :try_end_8d} :catchall_a7

    :try_start_8d
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_92} :catch_a5
    .catchall {:try_start_8d .. :try_end_92} :catchall_d3

    :try_start_92
    invoke-virtual {v4, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_a2
    .catchall {:try_start_92 .. :try_end_95} :catchall_9f

    invoke-static {v4}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :catchall_9f
    move-exception p0

    move-object p2, v4

    goto :goto_d4

    :catch_a2
    move-exception p0

    move-object p2, v4

    goto :goto_b4

    :catch_a5
    move-exception p0

    goto :goto_b4

    :catchall_a7
    move-exception p0

    move-object v0, p2

    goto :goto_d4

    :catch_aa
    move-exception p0

    move-object v0, p2

    goto :goto_b4

    :catchall_ad
    move-exception p0

    move-object v0, p2

    move-object v3, v0

    goto :goto_d4

    :catch_b1
    move-exception p0

    move-object v0, p2

    move-object v3, v0

    :goto_b4
    :try_start_b4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile e = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_b4 .. :try_end_c9} :catchall_d3

    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :catchall_d3
    move-exception p0

    :goto_d4
    invoke-static {p2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_de
    const-string/jumbo p1, "writeStringToFile, file exist, but isReplace is false"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
