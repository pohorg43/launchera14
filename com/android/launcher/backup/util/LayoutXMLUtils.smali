.class public final Lcom/android/launcher/backup/util/LayoutXMLUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLayoutXMLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutXMLUtils.kt\ncom/android/launcher/backup/util/LayoutXMLUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x8000

.field public static final INSTANCE:Lcom/android/launcher/backup/util/LayoutXMLUtils;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;

    invoke-direct {v0}, Lcom/android/launcher/backup/util/LayoutXMLUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->INSTANCE:Lcom/android/launcher/backup/util/LayoutXMLUtils;

    const-string v0, "BR-Launcher_LayoutXMLUtils"

    sput-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "copyFile exception occur while close in stream"

    const-string v1, "copyFile exception occur while close out stream"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_45

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_45

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1c} :catch_61
    .catchall {:try_start_6 .. :try_end_1c} :catchall_5e

    :try_start_1c
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_43
    .catchall {:try_start_1c .. :try_end_21} :catchall_88

    const p1, 0x8000

    :try_start_24
    new-array p1, p1, [B

    :goto_26
    invoke-virtual {p0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_31

    invoke-virtual {v4, p1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_26

    :cond_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3b} :catch_40
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3d

    move-object v3, v4

    goto :goto_46

    :catchall_3d
    move-exception p1

    move-object v3, v4

    goto :goto_89

    :catch_40
    move-exception p1

    move-object v3, v4

    goto :goto_63

    :catch_43
    move-exception p1

    goto :goto_63

    :cond_45
    move-object p0, v3

    :goto_46
    const/4 v2, 0x1

    if-eqz v3, :cond_52

    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_52

    :catch_4d
    sget-object p1, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    if-eqz p0, :cond_87

    :goto_54
    :try_start_54
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_87

    :catch_58
    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    :catchall_5e
    move-exception p1

    move-object p0, v3

    goto :goto_89

    :catch_61
    move-exception p1

    move-object p0, v3

    :goto_63
    :try_start_63
    sget-object v4, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFile exception, e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_63 .. :try_end_79} :catchall_88

    if-eqz v3, :cond_84

    :try_start_7b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_84

    :catch_7f
    sget-object p1, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    :goto_84
    if-eqz p0, :cond_87

    goto :goto_54

    :cond_87
    :goto_87
    return v2

    :catchall_88
    move-exception p1

    :goto_89
    if-eqz v3, :cond_94

    :try_start_8b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_94

    :catch_8f
    sget-object v2, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    :goto_94
    if-eqz p0, :cond_9f

    :try_start_96
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_9f

    :catch_9a
    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    throw p1
.end method

.method public static final deleteXmlFile(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "filePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string v0, "deleteXmlFile failed, filePath is empty"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteXmlFile xmlFile.delete failed. filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3a} :catch_3b

    goto :goto_52

    :catch_3b
    move-exception p0

    sget-object v0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteXmlFile exception, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public static final getXmlContent(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_4e
    .catchall {:try_start_1 .. :try_end_6} :catchall_49

    :try_start_6
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_46
    .catchall {:try_start_6 .. :try_end_b} :catchall_41

    :try_start_b
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const v3, 0x8000

    new-array v4, v3, [B

    :goto_15
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    iput v6, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_23

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    :cond_23
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "baos.toByteArray()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "UTF_8"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_38} :catch_3f
    .catchall {:try_start_b .. :try_end_38} :catchall_6e

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v4

    :catch_3f
    move-exception v2

    goto :goto_51

    :catchall_41
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_6f

    :catch_46
    move-exception v2

    move-object p0, v0

    goto :goto_51

    :catchall_49
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_6f

    :catch_4e
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_51
    :try_start_51
    sget-object v3, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getXmlContent exception, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_6e

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_6e
    move-exception v0

    :goto_6f
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final isXmlAvailable(Ljava/io/FileDescriptor;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_17
    .catchall {:try_start_2 .. :try_end_7} :catchall_15

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_12
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_32

    :catchall_f
    move-exception p0

    move-object v1, v2

    goto :goto_36

    :catch_12
    move-exception p0

    move-object v1, v2

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_36

    :catch_17
    move-exception p0

    :goto_18
    :try_start_18
    sget-object v2, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isXmlAvailable exception, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_15

    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    move p0, v0

    :goto_32
    if-lez p0, :cond_35

    const/4 v0, 0x1

    :cond_35
    return v0

    :goto_36
    invoke-static {v1}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static final writeToXml(Ljava/io/FileDescriptor;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "inputString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_61

    if-nez p0, :cond_f

    goto :goto_61

    :cond_f
    const/4 v0, 0x0

    :try_start_10
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v3, "UTF_8"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string/jumbo v2, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_41
    .catchall {:try_start_10 .. :try_end_26} :catchall_3f

    :try_start_26
    array-length p0, p1

    invoke-virtual {v2, p1, v1, p0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_34} :catch_3c
    .catchall {:try_start_26 .. :try_end_34} :catchall_39

    invoke-static {v2}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_39
    move-exception p0

    move-object v0, v2

    goto :goto_5d

    :catch_3c
    move-exception p0

    move-object v0, v2

    goto :goto_42

    :catchall_3f
    move-exception p0

    goto :goto_5d

    :catch_41
    move-exception p0

    :goto_42
    :try_start_42
    sget-object p1, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeToXml exception, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_42 .. :try_end_59} :catchall_3f

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    :goto_5d
    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :cond_61
    :goto_61
    sget-object p0, Lcom/android/launcher/backup/util/LayoutXMLUtils;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "writeToXml failed, inputString is empty or fileDescriptor is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
