.class public final Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallMonitor"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginManager.kt\ncom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor\n+ 2 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n*L\n1#1,956:1\n167#2,18:957\n142#2,20:975\n*S KotlinDebug\n*F\n+ 1 PluginManager.kt\ncom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor\n*L\n824#1:957,18\n828#1:975,20\n*E\n"
    }
.end annotation


# instance fields
.field private volatile isSdkInternalInitSuccess:Ljava/lang/Boolean;

.field private mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAssetsFileSize(Landroid/content/Context;Ljava/lang/String;)J
    .registers 14
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1c

    int-to-long p0, p0

    return-wide p0

    :catch_1c
    move-exception p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAssetsFileSize fail: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getMInitCallback()Lcom/oplus/seedling/sdk/callback/InitCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    return-object p0
.end method

.method public final isSdkInternalInitSuccess()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onSdkInternalInited(Z)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "PluginManager"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSdkInternalInited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isSuccess = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    monitor-enter p0

    :try_start_2e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess:Ljava/lang/Boolean;

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUmsUpdated()V
    .registers 34

    move-object/from16 v1, p0

    const-class v2, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    const-string v3, "Exception while read config : "

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v5, "PluginManager"

    const-string v6, "On ums updated."

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v0

    move v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sget-object v4, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.oplus.pantanal.ums"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    const-string v4, "urtContext"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_CONFIG()Ljava/lang/String;

    move-result-object v13

    const-string v4, "Start load remote config for "

    const-string v12, "."

    invoke-static {v4, v13, v12}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "PluginFileUtils"

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    move-object v4, v0

    move-object v15, v12

    move-object/from16 v12, v22

    move-object v0, v13

    move/from16 v13, v23

    move-object/from16 v16, v14

    move-object/from16 v14, v24

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v4, 0x0

    :try_start_61
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6d} :catch_8a

    :try_start_6d
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v6, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_81

    :try_start_7b
    invoke-static {v5, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_ab

    :catch_7f
    move-exception v0

    goto :goto_8c

    :catchall_81
    move-exception v0

    move-object v6, v0

    :try_start_83
    throw v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    move-object v7, v0

    :try_start_86
    invoke-static {v5, v6}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception v0

    move-object v6, v4

    :goto_8c
    sget-object v22, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v15}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "PluginFileUtils"

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_ab
    check-cast v6, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    if-nez v6, :cond_b0

    return-void

    :cond_b0
    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_LOCAL_CONFIG()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v7, "Start load local config for "

    invoke-static {v7, v0, v15}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "PluginFileUtils"

    move-object/from16 v22, v5

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_fa

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "PluginFileUtils"

    const-string v24, "File is not exist."

    move-object/from16 v22, v5

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_139

    :cond_fa
    :try_start_fa
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_ff} :catch_119

    :try_start_ff
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_108
    .catchall {:try_start_ff .. :try_end_108} :catchall_110

    :try_start_108
    invoke-static {v5, v4}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10d

    move-object v4, v2

    goto :goto_139

    :catch_10d
    move-exception v0

    move-object v4, v2

    goto :goto_11a

    :catchall_110
    move-exception v0

    move-object v2, v0

    :try_start_112
    throw v2
    :try_end_113
    .catchall {:try_start_112 .. :try_end_113} :catchall_113

    :catchall_113
    move-exception v0

    move-object v7, v0

    :try_start_115
    invoke-static {v5, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_119} :catch_119

    :catch_119
    move-exception v0

    :goto_11a
    sget-object v22, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v15}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "PluginFileUtils"

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_139
    check-cast v4, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SDK_STANDARD()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->getAssetsFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SO_STANDARD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->getAssetsFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v5, v14, v7

    if-ltz v5, :cond_1f7

    cmp-long v5, v2, v7

    if-gez v5, :cond_15b

    goto/16 :goto_1f7

    :cond_15b
    invoke-static {v6}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->gainHashConfig$pantanal_client_release(Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;)Lcom/oplus/pantanal/plugin/bean/HashEntity;

    move-result-object v8

    sget-object v5, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor$onUmsUpdated$reportPluginFileInitExecution$1;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor$onUmsUpdated$reportPluginFileInitExecution$1;

    new-instance v13, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SDK()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SO()Ljava/lang/String;

    move-result-object v0

    const-string v12, "SeedlingSdk.apk"

    move-object v7, v13

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v16, v6

    move-object v6, v13

    move-object v13, v0

    invoke-direct/range {v7 .. v13}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lcom/oplus/pantanal/plugin/PluginFileUtils;->checkIfNeedUpdate(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    const/4 v0, 0x1

    sget-object v22, Ly8/c;->a:Ly8/c;

    const-string v5, "onUmsUpdated. sdkAvailable = "

    const-string v6, ", soAvailable = "

    invoke-static {v5, v14, v15, v6}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", umsNeedUpdate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "PluginManager"

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v4, :cond_1da

    iget-object v5, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    if-eqz v5, :cond_1da

    invoke-virtual/range {v16 .. v16}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v7

    invoke-virtual {v4}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;->getVersion()I

    move-result v8

    add-long v9, v14, v2

    const/4 v6, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver;->onPluginCheckUpdateResult(IIIJ)V

    goto :goto_1da

    :cond_1c1
    sget-object v22, Ly8/c;->a:Ly8/c;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0xfc

    const/16 v32, 0x0

    const-string v23, "PluginManager"

    const-string v24, "onUmsUpdated. checkIfNeedUpdate is false"

    invoke-static/range {v22 .. v32}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1da
    :goto_1da
    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v20

    const-string v3, " onUmsUpdated: end  consuming: "

    invoke-static {v3, v1, v2}, Landroidx/core/animation/c;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1f7
    :goto_1f7
    sget-object v11, Ly8/c;->a:Ly8/c;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PluginManager"

    const-string v13, "onUmsUpdated. soSize or sdkSize is -1"

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setMInitCallback(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    return-void
.end method

.method public final setSdkInternalInitSuccess(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess:Ljava/lang/Boolean;

    return-void
.end method
