.class public final Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSeedlingSdkPluginFileUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedlingSdkPluginFileUtils.kt\ncom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils\n+ 2 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n*L\n1#1,200:1\n167#2,18:201\n142#2,20:219\n*S KotlinDebug\n*F\n+ 1 SeedlingSdkPluginFileUtils.kt\ncom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils\n*L\n59#1:201,18\n68#1:219,20\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;

.field private static final TAG:Ljava/lang/String; = "SeedlingSdkPluginFileUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final gainHashConfig$pantanal_client_release(Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "remoteConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start gain hash config for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingSdkPluginFileUtils"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-ne v0, v1, :cond_3e

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->getHashLite()Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object p0

    goto :goto_42

    :cond_3e
    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->getHashStandard()Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object p0

    :goto_42
    return-object p0
.end method

.method private static final gainRemotePluginName()Ljava/lang/String;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object v11, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v11}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start gain remote plugin name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkPluginFileUtils"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v11}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-ne v0, v1, :cond_3b

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SDK_LITE()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3b
    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SDK_STANDARD()Ljava/lang/String;

    move-result-object v0

    :goto_41
    return-object v0
.end method

.method private static final gainRemoteSoFolderName()Ljava/lang/String;
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object v11, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v11}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start gain remote so folder name for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkPluginFileUtils"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v11}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    sget-object v1, Lcom/oplus/seedling/sdk/entity/EngineType;->LITE:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-ne v0, v1, :cond_3b

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SO_FOLDER_LITE()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3b
    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SO_FOLDER_STANDARD()Ljava/lang/String;

    move-result-object v0

    :goto_41
    return-object v0
.end method

.method public static final initPluginFiles()I
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedlingSdkPluginFileUtils"

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
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.oplus.pantanal.ums"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v1, "urtContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->initSeedlingSdkPluginFiles(Landroid/content/Context;)I

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

    const-string v2, "SeedlingSdkPluginFileUtils"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_50
    const/16 v0, 0x3ea

    return v0
.end method

.method private static final initSeedlingSdkPluginFiles(Landroid/content/Context;)I
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v1, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    const-string v2, "Exception while read config : "

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_CONFIG()Ljava/lang/String;

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
    check-cast v5, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

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

    const-string v16, "SeedlingSdkPluginFileUtils"

    const-string v17, "Remote config is null."

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v0, 0x3e8

    return v0

    :cond_8d
    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_LOCAL_CONFIG()Ljava/lang/String;

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
    check-cast v3, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    move-object/from16 v1, p0

    invoke-static {v1, v5, v3}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->startUpdatePluginFiles(Landroid/content/Context;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)I

    move-result v0

    return v0
.end method

.method private static final startUpdatePluginFiles(Landroid/content/Context;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)I
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils$startUpdatePluginFiles$reportPluginFileInitExecution$1;

    new-instance v8, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    invoke-static {p1}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->gainHashConfig$pantanal_client_release(Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object v2

    sget-object v1, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SO()Ljava/lang/String;

    move-result-object v7

    const-string v6, "SeedlingSdk.apk"

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkIfNeedUpdate(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lkotlin/jvm/functions/Function1;)Z

    move-result p2

    if-nez p2, :cond_35

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkPluginFileUtils"

    const-string v2, "Do not need to update."

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 p0, 0x3f2

    return p0

    :cond_35
    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->updateFiles(Landroid/content/Context;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ly0/b;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingSdkPluginFileUtils"

    const-string v3, "initPluginFiles, updateFiles fail first, try again internal"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->updateFiles(Landroid/content/Context;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)I

    move-result p2

    :cond_72
    return p2
.end method

.method private static final updateFiles(Landroid/content/Context;Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)I
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedlingSdkPluginFileUtils"

    const-string v2, "Start update files."

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

    sget-object v12, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->createNewFolder(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "config.json"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seedlingsdk_plugin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->copyConfigFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->gainHashConfig$pantanal_client_release(Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)Lcom/oplus/pantanal/plugin/bean/HashEntity;

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

    const-string v1, "SeedlingSdkPluginFileUtils"

    const-string v2, "remote hash config is null."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidCacheFiles(Ljava/lang/String;)V

    const/16 p0, 0x3e8

    return p0

    :cond_60
    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->gainRemotePluginName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeedlingSdk.apk"

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->copyPluginFiles(Landroid/content/Context;Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/16 v0, 0x3f4

    if-eq v13, v0, :cond_8b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkPluginFileUtils"

    const-string v2, "Copy plugin file failed."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidCacheFiles(Ljava/lang/String;)V

    return v13

    :cond_8b
    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SO_CACHE()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->gainRemoteSoFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->copySoFiles(Landroid/content/Context;Lcom/oplus/pantanal/plugin/bean/HashEntity;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_b2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkPluginFileUtils"

    const-string v2, "Copy so file failed."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidCacheFiles(Ljava/lang/String;)V

    return p0

    :cond_b2
    :try_start_b2
    new-instance p0, Ljava/io/File;

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SO()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_cb

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_cb

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/File;->setWritable(Z)Z

    :cond_cb
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_cd
    .catchall {:try_start_b2 .. :try_end_cd} :catchall_ce

    goto :goto_d3

    :catchall_ce
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_d3
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_eb

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingSdkPluginFileUtils"

    const-string v2, "setWritable Failure"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_eb
    sget-object p0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK_CACHE()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->deleteInvalidFiles(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x3f3

    return p0
.end method
