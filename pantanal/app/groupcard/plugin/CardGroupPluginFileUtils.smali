.class public final Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardGroupPluginFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardGroupPluginFileUtils.kt\npantanal/app/groupcard/plugin/CardGroupPluginFileUtils\n+ 2 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n*L\n1#1,145:1\n167#2,18:146\n142#2,20:164\n*S KotlinDebug\n*F\n+ 1 CardGroupPluginFileUtils.kt\npantanal/app/groupcard/plugin/CardGroupPluginFileUtils\n*L\n57#1:146,18\n66#1:164,20\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;

.field private static final TAG:Ljava/lang/String; = "CardGroupPluginFileUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;

    invoke-direct {v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;-><init>()V

    sput-object v0, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;->INSTANCE:Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final cardGroupUpdateFiles(Landroid/content/Context;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;)I
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "cardGroupUpdateFiles"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v12, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->createNewFolder(Ljava/lang/String;)V

    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "config.json"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card_group_plugin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->copyConfigFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->getHashCardGroup()Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object p1

    if-nez p1, :cond_60

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "remote hash config is null."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidCacheFiles(Ljava/lang/String;)V

    const/16 p0, 0x3e8

    return p0

    :cond_60
    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SDK_LITE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PantanalCardGroupSdk.apk"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->copyPluginFiles(Landroid/content/Context;Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x3f4

    if-eq p0, p1, :cond_8b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "Copy plugin file failed."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidCacheFiles(Ljava/lang/String;)V

    return p0

    :cond_8b
    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v12}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidFiles(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3f3

    return p0
.end method

.method private static final initCardGroupPluginFiles(Landroid/content/Context;)I
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    const-string v2, "Exception while read config : "

    sget-object v0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_REMOTE_CONFIG_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "Start load remote config for "

    const-string v14, "."

    invoke-static {v4, v0, v14}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "PluginFileUtils"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v3, 0x0

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_4c

    :try_start_2f
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_43

    :try_start_3d
    invoke-static {v4, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_6d

    :catch_41
    move-exception v0

    goto :goto_4e

    :catchall_43
    move-exception v0

    move-object v5, v0

    :try_start_45
    throw v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    move-object v6, v0

    :try_start_48
    invoke-static {v4, v5}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v0

    move-object v5, v3

    :goto_4e
    sget-object v15, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v14}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "PluginFileUtils"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_6d
    check-cast v5, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    if-nez v5, :cond_8d

    sget-object v15, Ly8/c;->a:Ly8/c;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "CardGroupPluginFileUtils"

    const-string v17, "remoteCardGroupConfig is null."

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v0, 0x3e8

    return v0

    :cond_8d
    sget-object v0, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_LOCAL_CONFIG_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v6, "Start load local config for "

    invoke-static {v6, v0, v14}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "PluginFileUtils"

    move-object v15, v4

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "PluginFileUtils"

    const-string v17, "File is not exist."

    move-object v15, v4

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_114

    :cond_d5
    :try_start_d5
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_da} :catch_f4

    :try_start_da
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_eb

    :try_start_e3
    invoke-static {v4, v3}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_e8

    move-object v3, v1

    goto :goto_114

    :catch_e8
    move-exception v0

    move-object v3, v1

    goto :goto_f5

    :catchall_eb
    move-exception v0

    move-object v1, v0

    :try_start_ed
    throw v1
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ee

    :catchall_ee
    move-exception v0

    move-object v6, v0

    :try_start_f0
    invoke-static {v4, v1}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v6
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f4} :catch_f4

    :catch_f4
    move-exception v0

    :goto_f5
    sget-object v15, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v14}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "PluginFileUtils"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_114
    check-cast v3, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    move-object/from16 v1, p0

    invoke-static {v1, v5, v3}, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;->startUpdatePluginFiles(Landroid/content/Context;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;)I

    move-result v0

    return v0
.end method

.method public static final initPluginFiles()I
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "initPluginFiles"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_12
    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.oplus.pantanal.ums"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v1, "urtContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;->initCardGroupPluginFiles(Landroid/content/Context;)I

    move-result v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_29

    return v0

    :catchall_29
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_50

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Exception while init plugin files : "

    const-string v3, "."

    invoke-static {v2, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardGroupPluginFileUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_50
    const/16 v0, 0x3ea

    return v0
.end method

.method private static final startUpdatePluginFiles(Landroid/content/Context;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;)I
    .registers 24
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "startUpdatePluginFiles"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->getHashCardGroup()Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object v13

    sget-object v1, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v1}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v16

    const-string v17, "PantanalCardGroupSdk.apk"

    const/16 v18, 0x0

    const/16 v19, 0x20

    const/16 v20, 0x0

    move-object v12, v0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-direct/range {v12 .. v20}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkIfNeedUpdate$default(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "Do not need to update."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v0, 0x3f2

    return v0

    :cond_4b
    invoke-static/range {p0 .. p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;->cardGroupUpdateFiles(Landroid/content/Context;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;)I

    move-result v0

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginFileUtils"

    const-string v2, "initPluginFiles, updateFiles fail first, try again internal"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static/range {p0 .. p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;->cardGroupUpdateFiles(Landroid/content/Context;Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;)I

    move-result v0

    :cond_86
    return v0
.end method
