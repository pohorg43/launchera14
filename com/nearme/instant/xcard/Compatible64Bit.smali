.class public Lcom/nearme/instant/xcard/Compatible64Bit;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ASSETS_SO_LIB:Ljava/lang/String; = "64libs"

.field public static final LIB_DIR:Ljava/lang/String; = "quickapp_private_arm64"

.field private static READ_BYTE_COUNT:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Compatible64Bit"

.field private static final TEMP:Ljava/lang/String; = "_temp"

.field private static VERSION_CODE:Ljava/lang/String; = null

.field private static final VERSION_XML:Ljava/lang/String; = "64bit_so_version.xml"

.field public static sSoLibPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized copySo(Landroid/content/Context;)V
    .registers 14

    const-class v0, Lcom/nearme/instant/xcard/Compatible64Bit;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    const-string v2, "quickapp_private_arm64"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_13
    invoke-static {p0}, Lcom/nearme/instant/xcard/CardUtils;->getHapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nearme/instant/xcard/Compatible64Bit;->isNeedUpdateSo(Landroid/content/Context;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v2, "Compatible64Bit"

    const-string v3, "no need to update SO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_24} :catch_16e
    .catchall {:try_start_4 .. :try_end_24} :catchall_16c

    monitor-exit v0

    return-void

    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_57

    array-length v5, v4

    move v6, v1

    :goto_2e
    if-ge v6, v5, :cond_57

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    const-string v9, "Compatible64Bit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete file:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_54} :catch_57
    .catchall {:try_start_26 .. :try_end_54} :catchall_16c

    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :catch_57
    :cond_57
    :try_start_57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "64libs"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/nearme/instant/xcard/Compatible64Bit;->READ_BYTE_COUNT:I

    new-array v5, v5, [B

    array-length v6, v4

    move v7, v1

    :goto_6b
    if-ge v7, v6, :cond_11a

    aget-object v8, v4, v7

    const-string v9, "Compatible64Bit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "64bit_so_version.xml"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_cd

    :cond_b0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_cd
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_dd

    const-string v10, "Compatible64Bit"

    const-string v11, "so exists, delete and reload it"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_dd
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "64libs/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :goto_102
    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_10d

    invoke-virtual {v10, v5, v1, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_102

    :cond_10d
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6b

    :cond_11a
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "64bit_so_version.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lcom/nearme/instant/xcard/Compatible64Bit;->getVersionCode(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nearme/instant/xcard/Compatible64Bit;->VERSION_CODE:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "64bit_so_version.xml"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_16b} :catch_16e
    .catchall {:try_start_57 .. :try_end_16b} :catchall_16c

    goto :goto_1a4

    :catchall_16c
    move-exception p0

    goto :goto_1a6

    :catch_16e
    move-exception v2

    :try_start_16f
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "quickapp_private_arm64"

    invoke-virtual {p0, v5, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "64bit_so_version.xml"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_19d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_19d
    const-string p0, "Compatible64Bit"

    const-string v1, "Exception on copy so."

    invoke-static {p0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a4
    .catchall {:try_start_16f .. :try_end_1a4} :catchall_16c

    :goto_1a4
    monitor-exit v0

    return-void

    :goto_1a6
    monitor-exit v0

    throw p0
.end method

.method public static getNativeLibraryDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "Compatible64Bit"

    sget-object v1, Lcom/nearme/instant/xcard/Compatible64Bit;->sSoLibPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object p0, Lcom/nearme/instant/xcard/Compatible64Bit;->sSoLibPath:Ljava/lang/String;

    return-object p0

    :cond_d
    :try_start_d
    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->isArm64(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "quickapp_private_arm64"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_1f
    invoke-static {p0}, Lcom/nearme/instant/xcard/CardUtils;->getHapContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNativeLibraryDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    const-string v1, "getNativeLibraryDir:exception:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method private static getVersionCode(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_d
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    goto :goto_2a

    :cond_14
    const-string v1, "value"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_35

    if-eqz p0, :cond_29

    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_29} :catch_41
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_41

    :cond_29
    return-object v0

    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_35

    goto :goto_d

    :cond_2f
    if-eqz p0, :cond_49

    :try_start_31
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_34} :catch_41
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_41

    goto :goto_49

    :catchall_35
    move-exception v0

    if-eqz p0, :cond_40

    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p0

    :try_start_3d
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw v0
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_41} :catch_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    const-string v0, "Compatible64Bit"

    const-string v1, "Exception on get so version"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_49
    :goto_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init64So(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->isArm64(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "Compatible64Bit"

    const-string v0, "is32so"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->copySo(Landroid/content/Context;)V

    return-void
.end method

.method public static isArm64(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v0, "arm64"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isNeedUpdateSo(Landroid/content/Context;Landroid/content/Context;)Z
    .registers 8

    const-string v0, "Compatible64Bit"

    const/4 v1, 0x1

    :try_start_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quickapp_private_arm64"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "64bit_so_version.xml"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_30

    return v1

    :cond_30
    sget-object p0, Lcom/nearme/instant/xcard/Compatible64Bit;->VERSION_CODE:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_43

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->getVersionCode(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/nearme/instant/xcard/Compatible64Bit;->VERSION_CODE:Ljava/lang/String;

    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host so version code:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nearme/instant/xcard/Compatible64Bit;->VERSION_CODE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "64libs/64bit_so_version.xml"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/nearme/instant/xcard/Compatible64Bit;->getVersionCode(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine so version code:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/nearme/instant/xcard/Compatible64Bit;->VERSION_CODE:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_90

    sget-object p1, Lcom/nearme/instant/xcard/Compatible64Bit;->VERSION_CODE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8d} :catch_92

    if-nez p0, :cond_90

    goto :goto_91

    :cond_90
    move v1, v5

    :goto_91
    return v1

    :catch_92
    move-exception p0

    const-string p1, "fail to get so version."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
