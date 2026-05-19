.class public final Lcom/nearme/instant/xcard/UtilsKt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final APK_FOLDER:Ljava/lang/String; = "instant_card"

.field public static final APK_NAME:Ljava/lang/String; = "card.apk"

.field public static final CARD_META:Ljava/lang/String; = "digest.json"

.field public static final CARD_PAK:Ljava/lang/String; = "card/card.pak"

.field public static final CARD_UPDATE_FOLDER:Ljava/lang/String; = "instant_update"

.field public static final HAP_BRIDGE_SO:Ljava/lang/String; = "libhapbridge.so"

.field public static final KEY_MD5:Ljava/lang/String; = "md5"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "versionName"

.field public static final OP_DIR:Ljava/lang/String; = "qa_card_odex"

.field private static final TAG:Ljava/lang/String; = "DexUtils"

.field public static final ZIP_SEPARATOR:Ljava/lang/String; = "!/"

.field private static dexFile:Ljava/io/File; = null

.field private static dexReady:Z = false

.field private static optLock:Z = false

.field public static final uri:Ljava/lang/String; = "content://com.nearme.instant.platform.card_res"


# direct methods
.method public static synthetic a(Ljava/io/File;)Z
    .registers 1

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpToDate$lambda-16(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpToDate$lambda-19(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final declared-synchronized checkCardApk(Landroid/content/Context;)Z
    .registers 15

    const-class v0, Lcom/nearme/instant/xcard/UtilsKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_9b

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "digest.json"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_1ea

    if-eqz v7, :cond_6f

    :try_start_2b
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v3, v5, v4}, Ls4/e;->a(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "md5"

    const-string v8, "md5"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionName"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    const-string v3, "versionName"

    const-string v8, "versionName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const-string v3, "versionCode"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    const-string v3, "versionCode"

    const-string v8, "versionCode"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_65} :catch_67
    .catchall {:try_start_2b .. :try_end_65} :catchall_1ea

    :cond_65
    move v3, v4

    goto :goto_70

    :catch_67
    move-exception v3

    :try_start_68
    const-string v7, "DexUtils"

    const-string v8, "Fail to card.apk get md5"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6f
    move v3, v6

    :goto_70
    if-nez v3, :cond_9b

    const-string v3, "md5"

    invoke-static {v2}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_9b

    const-string v3, "versionName"

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "versionCode"

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_68 .. :try_end_9b} :catchall_1ea

    :cond_9b
    :try_start_9b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.nearme.instant.platform.card_res"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_a9} :catch_1d5
    .catchall {:try_start_9b .. :try_end_a9} :catchall_1d3

    if-nez v2, :cond_ad

    monitor-exit v0

    return v6

    :cond_ad
    :try_start_ad
    const-string v3, "checkCardVersion"

    invoke-virtual {v2, v3, v5, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1c8

    const-string v3, "ready"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_bf

    goto/16 :goto_1c8

    :cond_bf
    const-string v3, "content://com.nearme.instant.platform.card_res/card.apk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v7, "r"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_cb} :catch_1d0
    .catchall {:try_start_ad .. :try_end_cb} :catchall_1cd

    if-eqz v3, :cond_1c3

    :try_start_cd
    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getUpdateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    const-string v9, "card.apk"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_ec

    const-string v9, "parentFile"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_ec

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_ec
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_f0
    .catchall {:try_start_cd .. :try_end_f0} :catchall_1bc

    :try_start_f0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_1b5

    :try_start_f5
    const-string v10, "inputStream"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-static {v8, v9, v6, v10}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    invoke-static {v7}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "md5"

    const-string v13, ""

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12e

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    const-string p0, "DexUtils"

    const-string v1, "the card engine apk md5 not match"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_120
    .catchall {:try_start_f5 .. :try_end_120} :catchall_1ae

    :try_start_120
    invoke-static {v9, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_1b5

    :try_start_123
    invoke-static {v8, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_1bc

    :try_start_126
    invoke-static {v3, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_1d0
    .catchall {:try_start_126 .. :try_end_129} :catchall_1cd

    :try_start_129
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_1ea

    monitor-exit v0

    return v6

    :cond_12e
    :try_start_12e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_153

    const-string v12, "versionName"

    iget-object v13, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "versionCode"

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_153
    const-string v7, "md5"

    invoke-virtual {v1, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getUpdateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v13, "digest.json"

    invoke-direct {v12, p0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_168
    .catchall {:try_start_12e .. :try_end_168} :catchall_1ae

    :try_start_168
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "json.toString()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lk7/b;->a:Ljava/nio/charset/Charset;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v12, v7, v6, v10}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_184
    .catchall {:try_start_168 .. :try_end_184} :catchall_1a7

    :try_start_184
    invoke-static {v7, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "DexUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found card engine update: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19d
    .catchall {:try_start_184 .. :try_end_19d} :catchall_1ae

    :try_start_19d
    invoke-static {v9, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1a0
    .catchall {:try_start_19d .. :try_end_1a0} :catchall_1b5

    :try_start_1a0
    invoke-static {v8, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1a3
    .catchall {:try_start_1a0 .. :try_end_1a3} :catchall_1bc

    :try_start_1a3
    invoke-static {v3, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1a6} :catch_1d0
    .catchall {:try_start_1a3 .. :try_end_1a6} :catchall_1cd

    goto :goto_1c3

    :catchall_1a7
    move-exception p0

    :try_start_1a8
    throw p0
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a9

    :catchall_1a9
    move-exception v1

    :try_start_1aa
    invoke-static {v7, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1ae
    .catchall {:try_start_1aa .. :try_end_1ae} :catchall_1ae

    :catchall_1ae
    move-exception p0

    :try_start_1af
    throw p0
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1b0

    :catchall_1b0
    move-exception v1

    :try_start_1b1
    invoke-static {v9, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1b5
    .catchall {:try_start_1b1 .. :try_end_1b5} :catchall_1b5

    :catchall_1b5
    move-exception p0

    :try_start_1b6
    throw p0
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_1b7

    :catchall_1b7
    move-exception v1

    :try_start_1b8
    invoke-static {v8, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1bc
    .catchall {:try_start_1b8 .. :try_end_1bc} :catchall_1bc

    :catchall_1bc
    move-exception p0

    :try_start_1bd
    throw p0
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1be

    :catchall_1be
    move-exception v1

    :try_start_1bf
    invoke-static {v3, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c3} :catch_1d0
    .catchall {:try_start_1bf .. :try_end_1c3} :catchall_1cd

    :cond_1c3
    :goto_1c3
    :try_start_1c3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1c6
    .catchall {:try_start_1c3 .. :try_end_1c6} :catchall_1ea

    monitor-exit v0

    return v4

    :cond_1c8
    :goto_1c8
    :try_start_1c8
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1cb
    .catchall {:try_start_1c8 .. :try_end_1cb} :catchall_1ea

    monitor-exit v0

    return v4

    :catchall_1cd
    move-exception p0

    move-object v5, v2

    goto :goto_1e4

    :catch_1d0
    move-exception p0

    move-object v5, v2

    goto :goto_1d6

    :catchall_1d3
    move-exception p0

    goto :goto_1e4

    :catch_1d5
    move-exception p0

    :goto_1d6
    :try_start_1d6
    const-string v1, "DexUtils"

    const-string v2, "Fail to copy card apk"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1dd
    .catchall {:try_start_1d6 .. :try_end_1dd} :catchall_1d3

    if-eqz v5, :cond_1e2

    :try_start_1df
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1e2
    .catchall {:try_start_1df .. :try_end_1e2} :catchall_1ea

    :cond_1e2
    monitor-exit v0

    return v6

    :goto_1e4
    if-eqz v5, :cond_1e9

    :try_start_1e6
    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_1e9
    throw p0
    :try_end_1ea
    .catchall {:try_start_1e6 .. :try_end_1ea} :catchall_1ea

    :catchall_1ea
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final checkCardAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-static {v2}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nearme/instant/xcard/UtilsKt;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_38

    :cond_36
    move v3, v1

    goto :goto_39

    :cond_38
    :goto_38
    move v3, v0

    :goto_39
    if-eqz v3, :cond_7c

    const-string v3, "DexUtils"

    const-string v4, "use installed card engine"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    new-instance v3, Ljava/io/FileInputStream;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_50} :catch_7b

    const/4 p1, 0x0

    :try_start_51
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_65

    const-string v5, "parentFile"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_65

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_65
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_74

    :try_start_70
    invoke-static {v3, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_73} :catch_7b

    goto :goto_7c

    :catchall_74
    move-exception p0

    :try_start_75
    throw p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    :try_start_77
    invoke-static {v3, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_7b} :catch_7b

    :catch_7b
    move v0, v1

    :cond_7c
    :goto_7c
    return v0
.end method

.method public static final checkEngineApk(Landroid/content/Context;Landroid/content/res/AssetManager;Z)Z
    .registers 11

    const-string v0, "DexUtils"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "assets"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/nearme/instant/xcard/UtilsKt;->isFileReadOnly(Ljava/io/File;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    if-nez p2, :cond_1f

    invoke-static {p0, p1, v1}, Lcom/nearme/instant/xcard/UtilsKt;->isEngineApkReady(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_20

    :cond_1f
    return v3

    :cond_20
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-static {p2}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    :cond_35
    const/4 p2, 0x0

    :try_start_36
    const-string v2, "card/card.pak"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_ad

    :try_start_3c
    const-string v4, "check engine apk, use default engine: card/card.pak"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "cardStream"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_9d

    const-string v1, "card/digest.json"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_a2

    :try_start_5b
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    const-string v7, "digest.json"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_96

    :try_start_6b
    const-string v5, "input"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {p1, v1, p2, v5}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_8f

    :try_start_74
    invoke-static {v1, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_96

    :try_start_77
    invoke-static {p1, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a2

    :try_start_7a
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->optimizedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    :cond_87
    const-string p0, "delete old optimized dex"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8d

    goto :goto_9e

    :catchall_8d
    move-exception p0

    goto :goto_a4

    :catchall_8f
    move-exception p0

    :try_start_90
    throw p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v3

    :try_start_92
    invoke-static {v1, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p0

    :try_start_97
    throw p0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception v1

    :try_start_99
    invoke-static {p1, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_a2

    :cond_9d
    move v3, p2

    :goto_9e
    :try_start_9e
    invoke-static {v2, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_aa

    goto :goto_c3

    :catchall_a2
    move-exception p0

    move v3, p2

    :goto_a4
    :try_start_a4
    throw p0
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    :try_start_a6
    invoke-static {v2, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_aa} :catch_aa

    :catch_aa
    move-exception p0

    move p2, v3

    goto :goto_ae

    :catch_ad
    move-exception p0

    :goto_ae
    const-string p1, "checkEngineApk: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    :goto_c3
    return v3
.end method

.method public static final checkEngineVersion(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/content/pm/PackageInfo;)Z
    .registers 8

    const-string v0, "versionCode"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "assets"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_d
    const-string v1, "card/digest.json"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_65

    :try_start_13
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_5e

    :try_start_18
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Ls4/h;->c(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_50

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "jsonDigest.optString(KEY_VERSION_CODE)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_3e

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_3f

    :cond_3e
    move-object p2, v4

    :goto_3f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_57

    if-lt p2, v0, :cond_50

    const/4 p2, 0x1

    :try_start_49
    invoke-static {v1, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5e

    :try_start_4c
    invoke-static {p1, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_65

    return p2

    :cond_50
    :try_start_50
    invoke-static {v1, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    :try_start_53
    invoke-static {p1, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_65

    return p0

    :catchall_57
    move-exception p2

    :try_start_58
    throw p2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-static {v1, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p2

    :try_start_5f
    throw p2
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    :try_start_61
    invoke-static {p1, p2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_65

    :catch_65
    return p0
.end method

.method public static final declared-synchronized checkUpToDate(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;)Z
    .registers 12

    const-class v0, Lcom/nearme/instant/xcard/UtilsKt;

    monitor-enter v0

    :try_start_3
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sourceDir"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pi"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    const-string v2, "dex.zip"

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    const-string v1, "version.json"

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/nearme/instant/xcard/d;->a:Lcom/nearme/instant/xcard/d;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    array-length v1, v1

    if-nez v1, :cond_39

    move v1, v2

    goto :goto_3a

    :cond_39
    move v1, v8

    :goto_3a
    xor-int/2addr v1, v2

    goto :goto_3d

    :cond_3c
    move v1, v8

    :goto_3d
    sput-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_e9

    if-eqz v1, :cond_90

    :try_start_4b
    new-instance v1, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-static {v5, v3, v2}, Ls4/e;->a(Ljava/io/File;Ljava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "DexUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dex version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v6, "versionCode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v3, v6, :cond_85

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v6, "versionName"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    move v1, v2

    goto :goto_86

    :cond_85
    move v1, v8

    :goto_86
    sput-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z

    if-eqz v1, :cond_90

    sget-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_8c} :catch_90
    .catchall {:try_start_4b .. :try_end_8c} :catchall_e9

    if-nez v1, :cond_90

    monitor-exit v0

    return v2

    :catch_90
    :cond_90
    :try_start_90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "versionCode"

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "versionName"

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string p2, "json.toString()"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "DexUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installed version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DexUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "odex lock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/exceptionmonitor/util/e;

    move-object v2, v1

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/exceptionmonitor/util/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e7
    .catchall {:try_start_90 .. :try_end_e7} :catchall_e9

    monitor-exit v0

    return v8

    :catchall_e9
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final checkUpToDate$lambda-16(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "it.name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ".flock"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/m;->j(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method private static final checkUpToDate$lambda-19(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const-string v0, "$sourceDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$odex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$version"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$jsonStr"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "DexUtils"

    monitor-enter v0

    :try_start_1c
    sget-boolean v1, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_77

    const/4 v2, 0x0

    if-nez v1, :cond_55

    :try_start_21
    invoke-static {p0, p1}, Lcom/nearme/instant/xcard/UtilsKt;->copyDex(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_2d
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_32} :catch_55
    .catchall {:try_start_21 .. :try_end_32} :catchall_77

    :try_start_32
    sget-object p1, Lk7/b;->a:Ljava/nio/charset/Charset;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p4, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p4, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    const/4 p4, 0x2

    invoke-static {p2, p0, p1, p4}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_4e

    :try_start_47
    invoke-static {p0, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4d} :catch_55
    .catchall {:try_start_47 .. :try_end_4d} :catchall_77

    goto :goto_55

    :catchall_4e
    move-exception p1

    :try_start_4f
    throw p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p2

    :try_start_51
    invoke-static {p0, p1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_77

    :catch_55
    :cond_55
    :goto_55
    :try_start_55
    new-instance p0, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;

    sget-object p1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p1, :cond_61

    const-string p1, "dexFile"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_62

    :cond_61
    move-object v2, p1

    :goto_62
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/nearme/instant/xcard/UtilsKt;->getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/nearme/instant/xcard/Compatible64Bit;->getNativeLibraryDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_75

    :catchall_75
    monitor-exit v0

    return-void

    :catchall_77
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final checkUpdate(Landroid/content/Context;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getUpdateDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    new-instance v1, Ljava/io/File;

    const-string v2, "digest.json"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "card.apk"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2c

    goto/16 :goto_a6

    :cond_2c
    const-string v4, "DexUtils"

    const-string v5, "update card engine to from update dir."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_3f
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_9b

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catchall {:try_start_3f .. :try_end_60} :catchall_9f

    :try_start_60
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_94

    const/4 v1, 0x0

    const/4 v7, 0x2

    :try_start_67
    invoke-static {v2, v3, v1, v7}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_8d

    :try_start_6a
    invoke-static {v2, v6}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    invoke-static {v0}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->optimizedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->deleteRecursivelyWithPrint(Ljava/io/File;)V

    :cond_84
    const-string p0, "delete old optimized dex"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_94

    :try_start_89
    invoke-static {v3, v6}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_9f

    goto :goto_9b

    :catchall_8d
    move-exception p0

    :try_start_8e
    throw p0
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception v0

    :try_start_90
    invoke-static {v2, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p0

    :try_start_95
    throw p0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_96

    :catchall_96
    move-exception v0

    :try_start_97
    invoke-static {v3, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9f

    :cond_9b
    :goto_9b
    invoke-static {v5, v6}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_9f
    move-exception p0

    :try_start_a0
    throw p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v0

    invoke-static {v5, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_a6
    :goto_a6
    return-void
.end method

.method public static final clearDirectory(Ljava/io/File;)Z
    .registers 7

    const-string v0, "dir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_43

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_43

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "file"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nearme/instant/xcard/UtilsKt;->clearDirectory(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v0, v5

    :cond_23
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DexUtils"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_43
    return v0
.end method

.method private static final copyDex(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "DexUtils"

    const-string v1, "copy dex start"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "dex.tmp"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    const-string v2, "dexFile"

    const/4 v3, 0x0

    if-nez p1, :cond_19

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_19
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p1, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p1, :cond_27

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_27
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2a
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_33
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    :try_start_38
    new-instance p0, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_b7

    :try_start_42
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    const-string v5, "zf.entries()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "<this>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Li4/q;

    invoke-direct {v5, v4}, Li4/q;-><init>(Ljava/util/Enumeration;)V

    invoke-static {v5}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object v4

    sget-object v5, Lcom/nearme/instant/xcard/UtilsKt$copyDex$1$1$1;->INSTANCE:Lcom/nearme/instant/xcard/UtilsKt$copyDex$1$1$1;

    invoke-static {v4, v5}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object v4

    check-cast v4, Lj7/e;

    new-instance v5, Lj7/e$a;

    invoke-direct {v5, v4}, Lj7/e$a;-><init>(Lj7/e;)V

    :goto_66
    invoke-virtual {v5}, Lj7/e$a;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-virtual {v5}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_76
    .catchall {:try_start_42 .. :try_end_76} :catchall_b0

    :try_start_76
    new-instance v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const-string v4, "it"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v7, 0x2

    invoke-static {v6, p0, v4, v7}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_90

    :try_start_8c
    invoke-static {v6, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_b0

    goto :goto_66

    :catchall_90
    move-exception v0

    :try_start_91
    throw v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception v1

    :try_start_93
    invoke-static {v6, v0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_b0

    :cond_97
    :try_start_97
    invoke-static {p0, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_b7

    invoke-static {p1, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p0, :cond_a5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a6

    :cond_a5
    move-object v3, p0

    :goto_a6
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string p0, "copy dex end"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catchall_b0
    move-exception v0

    :try_start_b1
    throw v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v1

    :try_start_b3
    invoke-static {p0, v0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception p0

    :try_start_b8
    throw p0
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception v0

    invoke-static {p1, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final deleteRecursivelyWithPrint(Ljava/io/File;)V
    .registers 3

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls4/f;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DexUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method public static final getCardDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instant_card"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v0, "context.getDir(APK_FOLDER, Context.MODE_PRIVATE)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getDexPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "sourceDir"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/nearme/instant/xcard/UtilsKt;->dexReady:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/nearme/instant/xcard/UtilsKt;->optLock:Z

    if-nez v0, :cond_20

    sget-object p0, Lcom/nearme/instant/xcard/UtilsKt;->dexFile:Ljava/io/File;

    if-nez p0, :cond_17

    const-string p0, "dexFile"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_17
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "dexFile.absolutePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_20
    return-object p0
.end method

.method public static final getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    const-string v1, "file"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_46

    const/4 p0, 0x0

    :try_start_d
    const-string v2, "md5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/16 v3, 0x400

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    :goto_1b
    if-ltz v4, :cond_26

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    goto :goto_1b

    :cond_26
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;->INSTANCE:Lcom/nearme/instant/xcard/UtilsKt$getFileMD5$1$1$1;

    const/16 v9, 0x1e

    invoke-static/range {v2 .. v9}, Li4/k;->G([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_3f

    :try_start_3b
    invoke-static {v1, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_46

    return-object v2

    :catchall_3f
    move-exception p0

    :try_start_40
    throw p0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v2

    :try_start_42
    invoke-static {v1, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_46} :catch_46

    :catch_46
    return-object v0
.end method

.method public static final getOptimizedDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "odex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "context.getDir(\"odex\", C…ODE_PRIVATE).absolutePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getUpdateDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "instant_update"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "engine"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final is64Abi(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "ctx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result p0

    return p0
.end method

.method private static final isART64(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "art"

    const/4 v1, 0x2

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-class v3, Ljava/lang/ClassLoader;

    const-string v4, "findLibrary"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2a

    check-cast p0, Ljava/lang/String;

    const-string v0, "lib64"

    invoke-static {p0, v0, v2, v1}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2b

    return p0

    :cond_2a
    return v2

    :catch_2b
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    const-string v0, "Build.SUPPORTED_ABIS[0]"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arm64"

    invoke-static {p0, v0, v2, v1}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    return p0
.end method

.method public static final isEngineApkReady(Landroid/content/Context;Landroid/content/res/AssetManager;Ljava/io/File;)Z
    .registers 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineApk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const v2, 0x8000040

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/UtilsKt;->checkEngineVersion(Landroid/content/Context;Landroid/content/res/AssetManager;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    const-string v0, "DexUtils"

    if-nez p1, :cond_33

    const-string p0, "lower version, force update"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_33
    invoke-static {p2, p0}, Lcom/nearme/instant/xcard/UtilsKt;->verifyAppSignature(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3f

    const-string p0, "unknown signature, force update"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3f
    const/4 p0, 0x1

    return p0

    :cond_41
    return v1
.end method

.method public static final isEntryStored(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "zipFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static final isFileReadOnly(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljava/io/File;->canExecute()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public static final nativeInZipLibrary(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "!/lib/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1f

    const-string p0, "arm64-v8a"

    goto :goto_21

    :cond_1f
    const-string p0, "armeabi-v7a"

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final nativeLibraries(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "arm64-v8a"

    const-string v3, "armeabi-v7a"

    if-eqz p1, :cond_27

    move-object v4, v2

    goto :goto_28

    :cond_27
    move-object v4, v3

    :goto_28
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    const-string v4, "lib"

    invoke-direct {v1, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, v3

    :goto_41
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "nativeLibrary, searchPaths: + "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DexUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "join(File.pathSeparator, librarySearchPaths)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final nativeLibrary(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    const-string p0, "arm64-v8a"

    goto :goto_17

    :cond_15
    const-string p0, "armeabi-v7a"

    :goto_17
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "File(\n        getCardDir… \"armeabi-v7a\"\n    ).path"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final optimizedDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "qa_card_odex"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z
    .registers 15

    const-string v0, "lib/"

    const-string v1, "DexUtils"

    const-string v2, "fileInputStream"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destFile"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1c

    return v3

    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2d

    :cond_2c
    move-object v2, v4

    :goto_2d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3d
    const/4 v2, 0x1

    :try_start_3e
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_43} :catch_153

    const/4 v6, 0x2

    :try_start_44
    invoke-static {p0, v5, v3, v6}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_14c

    :try_start_4e
    invoke-static {v5, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_58

    return v3

    :cond_58
    invoke-virtual {p1}, Ljava/io/File;->setReadOnly()Z

    move-result p0

    if-nez p0, :cond_64

    const-string p0, "fail to set ReadOnly"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_64
    if-nez p2, :cond_69

    const-string p0, ""

    goto :goto_74

    :cond_69
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_72

    const-string p0, "arm64-v8a"

    goto :goto_74

    :cond_72
    const-string p0, "armeabi-v7a"

    :goto_74
    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_79} :catch_153

    :try_start_79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/libhapbridge.so"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/nearme/instant/xcard/UtilsKt;->isEntryStored(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9e

    const-string p0, "TAG"

    const-string p1, "uncompressed \'.so\' file entries, don not extract lib"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_79 .. :try_end_9a} :catchall_145

    :try_start_9a
    invoke-static {p2, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v2

    :cond_9e
    invoke-static {p2, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/util/zip/ZipFile;

    invoke-direct {p2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a6} :catch_153

    :try_start_a6
    invoke-virtual {p2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    :cond_ae
    :goto_ae
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_139

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "entry.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3, v6}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v8

    if-eqz v8, :cond_ae

    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "canonicalPath"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "targetDir.canonicalPath"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v10, v3, v6}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_107

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_107

    move v9, v2

    goto :goto_108

    :cond_107
    move v9, v3

    :goto_108
    if-eqz v9, :cond_113

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_113

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_113
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_118
    .catchall {:try_start_a6 .. :try_end_118} :catchall_13e

    :try_start_118
    invoke-virtual {p2, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_11c
    .catchall {:try_start_118 .. :try_end_11c} :catchall_132

    :try_start_11c
    const-string v8, "inputLib"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9, v3, v6}, Ls4/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;II)J
    :try_end_124
    .catchall {:try_start_11c .. :try_end_124} :catchall_12b

    :try_start_124
    invoke-static {v7, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_132

    :try_start_127
    invoke-static {v9, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_13e

    goto :goto_ae

    :catchall_12b
    move-exception p0

    :try_start_12c
    throw p0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12d

    :catchall_12d
    move-exception p1

    :try_start_12e
    invoke-static {v7, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_132
    .catchall {:try_start_12e .. :try_end_132} :catchall_132

    :catchall_132
    move-exception p0

    :try_start_133
    throw p0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_134

    :catchall_134
    move-exception p1

    :try_start_135
    invoke-static {v9, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_139
    .catchall {:try_start_135 .. :try_end_139} :catchall_13e

    :cond_139
    :try_start_139
    invoke-static {p2, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_153

    move v3, v2

    goto :goto_15d

    :catchall_13e
    move-exception p0

    :try_start_13f
    throw p0
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_140

    :catchall_140
    move-exception p1

    :try_start_141
    invoke-static {p2, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_145} :catch_153

    :catchall_145
    move-exception p0

    :try_start_146
    throw p0
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_147

    :catchall_147
    move-exception p1

    :try_start_148
    invoke-static {p2, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14c} :catch_153

    :catchall_14c
    move-exception p0

    :try_start_14d
    throw p0
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14e

    :catchall_14e
    move-exception p1

    :try_start_14f
    invoke-static {v5, p0}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_153} :catch_153

    :catch_153
    move-exception p0

    const-string p1, "extract lib fail: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_15d
    return v3
.end method

.method public static synthetic saveApk$default(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;ILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-static {p0, p1, p2}, Lcom/nearme/instant/xcard/UtilsKt;->saveApk(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static final sourceFile(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->getCardDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "card.apk"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final verifyAppSignature(Landroid/content/pm/PackageInfo;Landroid/content/Context;)Z
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_5b

    :try_start_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x8000040

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v1, "pm.getPackageInfo(\n     …_SIGNATURES\n            )"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1c} :catch_44

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_27

    :cond_26
    move-object p1, v1

    :goto_27
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_31

    :cond_30
    move-object p0, v1

    :goto_31
    const/4 v2, 0x1

    if-eqz p1, :cond_43

    aget-object p1, p1, v0

    if-eqz p1, :cond_43

    if-eqz p0, :cond_3c

    aget-object v1, p0, v0

    :cond_3c
    invoke-virtual {p1, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v2, :cond_43

    move v0, v2

    :cond_43
    return v0

    :catch_44
    move-exception p0

    const-string p1, "verifyAppSignature: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DexUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return v0
.end method
