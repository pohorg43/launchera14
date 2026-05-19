.class public final Lcom/oplus/seedling/sdk/plugin/PluginManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/pantanal/plugin/PluginUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;,
        Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginManager.kt\ncom/oplus/seedling/sdk/plugin/PluginManager\n+ 2 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,956:1\n142#2,20:957\n1855#3,2:977\n*S KotlinDebug\n*F\n+ 1 PluginManager.kt\ncom/oplus/seedling/sdk/plugin/PluginManager\n*L\n204#1:957,20\n229#1:977,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

.field private static final INTERNAL_SDK_INIT_TIMEOUT:J = 0x1f40L

.field private static final SDK_DELAY_QUIT:J = 0x64L

.field private static final SECONDARY_HOME_PKG:Ljava/lang/String; = "com.oplus.secondaryhome"

.field private static final SHUTDOWN_TIMEOUTS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "PluginManager"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entranceSdkVersionCode:Ljava/lang/Integer;

.field private hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

.field private initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

.field private pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

.field private pluginDexClassLoader:Ldalvik/system/DexClassLoader;

.field private pluginGitCommitHash:Ljava/lang/String;

.field private pluginVersionCode:Ljava/lang/Integer;

.field private pluginVersionName:Ljava/lang/String;

.field private final seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/seedling/sdk/manager/ISeedlingManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;)V

    iput-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$invokeInitSdk(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeInitSdk(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public static final synthetic access$loadInitManager(Lcom/oplus/seedling/sdk/plugin/PluginManager;)Lcom/oplus/seedling/sdk/manager/IInitManager;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showConfigMsg(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showConfigMsg(Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic access$updateNewConfig(Lcom/oplus/seedling/sdk/plugin/PluginManager;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->updateNewConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final doInit(Lcom/oplus/seedling/sdk/callback/InitCallback;ZLcom/oplus/seedling/sdk/SeedlingInitConfig;)V
    .registers 25

    move-object/from16 v1, p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v3, "PluginManager"

    const-string v4, "doInit begin"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v2, v0

    move v5, v13

    move-object v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_LOCAL_CONFIG()Ljava/lang/String;

    move-result-object v12

    const-string v2, "Start load local config for "

    const-string v11, "."

    invoke-static {v2, v12, v11}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "PluginFileUtils"

    move-object v2, v0

    move-object v13, v11

    move/from16 v11, v19

    move-object v14, v12

    move-object/from16 v12, v20

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v14, 0x0

    if-nez v3, :cond_5e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PluginFileUtils"

    const-string v4, "File is not exist."

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_9a

    :cond_5e
    :try_start_5e
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_7f

    :try_start_63
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_76

    :try_start_6e
    invoke-static {v3, v14}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_73

    move-object v14, v2

    goto :goto_9a

    :catch_73
    move-exception v0

    move-object v14, v2

    goto :goto_80

    :catchall_76
    move-exception v0

    move-object v2, v0

    :try_start_78
    throw v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v0

    move-object v4, v0

    :try_start_7b
    invoke-static {v3, v2}, Ls4/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7f} :catch_7f

    :catch_7f
    move-exception v0

    :goto_80
    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Exception while read config : "

    invoke-static {v3, v0, v13}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PluginFileUtils"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_9a
    if-eqz v14, :cond_d6

    iget-object v0, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_a2

    if-eqz p2, :cond_d2

    :cond_a2
    move-object/from16 v2, p3

    :try_start_a4
    invoke-direct {v1, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initPluginClassLoader(Lcom/oplus/seedling/sdk/SeedlingInitConfig;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_ad

    goto :goto_b2

    :catchall_ad
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_b2
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "doInit, initPluginClassLoader fail "

    const-string v3, " "

    invoke-static {v2, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3e8

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_d2
    invoke-direct/range {p0 .. p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInitSdk(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    goto :goto_e5

    :cond_d6
    const/16 v2, 0x3e8

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, "doInit, localConfig is null, consider this is the first time to copy plugin and failed"

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_e5
    return-void
.end method

.method public static synthetic doInit$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InitCallback;ZLcom/oplus/seedling/sdk/SeedlingInitConfig;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInit(Lcom/oplus/seedling/sdk/callback/InitCallback;ZLcom/oplus/seedling/sdk/SeedlingInitConfig;)V

    return-void
.end method

.method private final doInitSdk(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "doInitSdk"

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v11, "PluginManager"

    const-string v12, "doInitSdk,begin."

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v10, v1

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v2, "1002022"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/oplus/seedling/sdk/plugin/PluginManager;->entranceSdkVersionCode:Ljava/lang/Integer;

    :try_start_29
    invoke-direct/range {p0 .. p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeExchangeVersion()V

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->isPluginSupportFeature(I)Z

    move-result v2

    new-instance v3, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;

    invoke-direct {v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", SeedlingSdk version of entrance = 1.2.22, 1002022, isSupportCallback:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v11, "PluginManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v10, v1

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v3, v9}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->setMInitCallback(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    const/4 v0, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_124

    monitor-enter v3
    :try_end_65
    .catchall {:try_start_29 .. :try_end_65} :catchall_13f

    :try_start_65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    invoke-static {v2}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v13, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$1$1;

    invoke-direct {v13, v8, v3, v9, v4}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$1$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const-string v11, "PluginManager"

    const-string v12, "doInitSdk wait invokeInitSdk"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v10, v1

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-wide/16 v10, 0x1f40

    invoke-virtual {v3, v10, v11}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInitSdk wait invokeInitSdk end, Time consuming "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v11, "PluginManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v10, v1

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_c0
    .catchall {:try_start_65 .. :try_end_c0} :catchall_121

    :try_start_c0
    monitor-exit v3

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    goto :goto_13c

    :cond_da
    const-string v11, "PluginManager"

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess()Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInitSdk fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isSdkInternalInitSuccess = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v10, v1

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeReleaseSdk()V

    const/16 v2, 0x3ea

    const-string v3, "sdk internal init fail"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_13c

    :catchall_121
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_124
    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;

    invoke-direct {v2, v8, v3, v9, v4}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    invoke-static {v1, v2}, Lm7/h;->c(Ll4/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface/range {p1 .. p1}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    :goto_13c
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_13e
    .catchall {:try_start_c0 .. :try_end_13e} :catchall_13f

    goto :goto_144

    :catchall_13f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_144
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_151

    const-string v1, "doInitSdk error, Exception happen for doInitSdk."

    const/16 v2, 0x3ea

    invoke-direct {v8, v2, v1, v9, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V

    :cond_151
    return-void
.end method

.method private final freeVariable()V
    .registers 1

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private final gainPluginClassLoader()Ldalvik/system/DexClassLoader;
    .registers 13

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_26

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugin class loader has inited,classloader = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    :cond_26
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initPluginClassLoader$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/SeedlingInitConfig;ILjava/lang/Object;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ly8/d;->c(Ljava/lang/Class;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    const-string v3, "gainPluginClassLoader,pluginDexClassLoader create in gainPluginClassLoader!!"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method private final getHostClassLoader(Lcom/oplus/seedling/sdk/SeedlingInitConfig;)Ljava/lang/ClassLoader;
    .registers 14

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-eqz p0, :cond_24

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "initPluginClassLoader,hostClassLoader use initConfig\'s classloader."

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getHostClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    :cond_24
    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->isContextLoadedByAppDefaultClassLoader()Z

    move-result p0

    if-nez p0, :cond_72

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p1

    sget-object v11, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "initPluginClassLoader,use appContext\'s parent classloader,classloader = "

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_6c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "initPluginClassLoader,hostAppClassLoader.parent is null,use origin classloadr,check your cofing. "

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_6c
    const-string p0, "hostAppClassLoader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_72
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "initPluginClassLoader,hostClassLoader use sAppContext\'s classLoader."

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p1, "SeedlingSdk.sAppContext.classLoader"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final initPluginClassLoader(Lcom/oplus/seedling/sdk/SeedlingInitConfig;)Ldalvik/system/DexClassLoader;
    .registers 16

    sget-object v11, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPluginClassLoader,Start init class loader,initConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "PluginManager"

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

    sget-object v12, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly8/d;->c(Ljava/lang/Class;)V

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/seedling/sdk/plugin/ReflectUtils;->hookResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_44

    new-instance v2, Lcom/oplus/pantanal/plugin/PluginContext;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/oplus/pantanal/plugin/PluginContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    :cond_44
    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->getHostClassLoader(Lcom/oplus/seedling/sdk/SeedlingInitConfig;)Ljava/lang/ClassLoader;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPluginClassLoader,hostAppClassLoader is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;

    sget-object v1, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_PLUGIN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v2, "SeedlingSdk.sAppContext.filesDir.absolutePath"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SO()Ljava/lang/String;

    move-result-object v7

    move-object v4, v0

    move-object v8, v13

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/oplus/seedling/sdk/plugin/classloader/SeedlingClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/oplus/seedling/sdk/SeedlingInitConfig;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    if-eqz p0, :cond_ab

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-class p1, Landroid/view/LayoutInflater;

    const-string v1, "mFactory2"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/oplus/pantanal/plugin/InflaterFactory;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/oplus/pantanal/plugin/InflaterFactory;-><init>(Landroid/view/LayoutInflater$Factory2;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ab
    return-object v0
.end method

.method public static synthetic initPluginClassLoader$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/SeedlingInitConfig;ILjava/lang/Object;)Ldalvik/system/DexClassLoader;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initPluginClassLoader(Lcom/oplus/seedling/sdk/SeedlingInitConfig;)Ldalvik/system/DexClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private final initSdkWithUserContext(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 14

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->isPluginSupportFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object p2, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object p2

    if-eqz p2, :cond_56

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-eqz p0, :cond_56

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "initSdkWithUserContext success"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p0, p2, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->initSdk(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;)V

    goto :goto_56

    :cond_2b
    iget-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionCode:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSdkWithUserContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, because isSupportInitWithContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pluginSdkVersionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_56
    :goto_56
    return-void
.end method

.method private final invokeExchangeVersion()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "invokeExchangeVersion"

    :try_start_4
    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v4, "PluginManager"

    const-string v5, "invokeExchangeVersion, Start invoke init exchange version."

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object v3

    if-eqz v3, :cond_26

    const-string v4, "1.2.22-f1ec63f"

    const-string v5, "1002022"

    invoke-interface {v3, v4, v5}, Lcom/oplus/seedling/sdk/manager/IInitManager;->exchangeVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_27

    :cond_26
    const/4 v3, 0x0

    :goto_27
    move-object v14, v3

    if-eqz v14, :cond_a0

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", plugin SeedlingSdk version name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", VersionCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "PluginManager"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/16 v16, 0x0

    move-object v3, v0

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object v15, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionName:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionCode:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->isPluginSupportFeature(I)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_8c

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginGitCommitHash:Ljava/lang/String;

    goto :goto_9d

    :cond_8c
    const-string v4, "PluginManager"

    const-string v5, "invokeExchangeVersion,plugin not support git commit hash or return list size < 3!"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_9d
    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_ab

    :cond_a0
    new-instance v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeExchangeVersion$1$2;

    invoke-direct {v0, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeExchangeVersion$1$2;-><init>(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_4 .. :try_end_a5} :catchall_a6

    goto :goto_ab

    :catchall_a6
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_ab
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_cd

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, ",Exception happen for invoke exchange version : "

    const-string v5, "."

    invoke-static {v2, v4, v0, v5}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "PluginManager"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_cd
    iget-object v0, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionName:Ljava/lang/String;

    iget-object v2, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginGitCommitHash:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/oplus/seedling/sdk/LogUtils;->injectPluginVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v2, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginGitCommitHash:Ljava/lang/String;

    iget-object v1, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "tj"

    const-string v5, "injectSeedlingPluginVersionInfo,"

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sput-object v2, Ly8/c;->e:Ljava/lang/String;

    sput-object v1, Ly8/c;->d:Ljava/lang/String;

    sget-object v1, Ly8/c;->c:Lcom/oplus/pantanal/log/printer/IPrinter;

    invoke-interface {v1}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v1

    invoke-virtual {v0}, Ly8/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->resetLogMsgSuffix(Ljava/lang/String;)V

    return-void
.end method

.method private final invokeInitSdk(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 29

    move-object/from16 v1, p0

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Start invoke init sdk, pkgName:"

    invoke-static {v3, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    if-eqz v3, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v3

    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0

    if-eqz v0, :cond_46

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v5, "PluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " use userContext."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initSdkWithUserContext(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    goto :goto_98

    :cond_46
    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v16, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " use normal context."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    move-object v15, v0

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object v4

    if-eqz v4, :cond_7d

    move-object/from16 v5, p1

    invoke-interface {v4, v3, v5}, Lcom/oplus/seedling/sdk/manager/IInitManager;->initSdk(Landroid/content/Context;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    goto :goto_7e

    :cond_7d
    const/4 v3, 0x0

    :goto_7e
    if-nez v3, :cond_98

    const-string v16, "PluginManager"

    const-string v17, "initSdk failed via manager is null."

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    move-object v15, v0

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_98
    :goto_98
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_9a
    .catchall {:try_start_1b .. :try_end_9a} :catchall_9b

    goto :goto_a0

    :catchall_9b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_a0
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b3

    const-string v3, " error, Exception happen for doInitSdk."

    invoke-static {v2, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ea

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V

    :cond_b3
    return-void
.end method

.method private final invokeOnTrimMemory(I)V
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "PluginManager"

    const-string v2, "Start invoke invokeOnTrimMemory."

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

    :try_start_13
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->onTrimMemory(I)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    if-nez p0, :cond_33

    const-string v1, "PluginManager"

    const-string v2, "onTrimMemory invoke failed via manager is null."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_33
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_36

    goto :goto_3b

    :catchall_36
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_52

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "Exception happen for invoke onTrimMemory"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_52
    return-void
.end method

.method private final invokeReleaseSdk()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "PluginManager"

    const-string v2, "invokeReleaseSdk,begin,step1"

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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ll4/d;)V

    invoke-static {v2, v3}, Lm7/h;->c(Ll4/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokeReleaseSdk,end,cost = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final isPluginSupportFeature(I)Z
    .registers 16

    const-string v0, "isPluginSupportFeature feature:"

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-interface {v1, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->isPluginSupportFeature(I)Z

    move-result p1

    goto :goto_33

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", get result is null, so return false"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "PluginManager"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_38

    goto :goto_3d

    :catchall_38
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3d
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionCode:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pluginSdkVersionCode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", maybe version is not compatible, errorMsg:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "PluginManager"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_75
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v0, p1, Lh4/k$a;

    if-eqz v0, :cond_7c

    move-object p1, p0

    :cond_7c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "PluginManager"

    const-string v2, "Start load init manager."

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

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    if-eqz v0, :cond_2b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "loadInitManager,initManager has init,just return"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    return-object p0

    :cond_2b
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly8/d;->c(Ljava/lang/Class;)V

    :try_start_34
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->gainPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const-string v1, "com.oplus.seedling.framework.manager.SeedlingSdkInternal"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pluginDexClassLoader.loa…ACKAGE_PATH_SEEDLING_SDK)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ly8/d;->c(Ljava/lang/Class;)V

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v1, "PluginManager"

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadInitManager  field.get(null) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ly8/d;->c(Ljava/lang/Class;)V

    const-string v0, "null cannot be cast to non-null type com.oplus.seedling.sdk.manager.IInitManager"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Lcom/oplus/seedling/sdk/manager/IInitManager;

    iput-object v12, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_8f
    .catchall {:try_start_34 .. :try_end_8f} :catchall_90

    goto :goto_95

    :catchall_90
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_95
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_dd

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v12, "Exception happen for loadInitManager,msg = "

    invoke-static {v12, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x7c

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    move-object v9, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SeedlingSdk.sAppContext.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v3, "PluginManager"

    invoke-static {v3, v0}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " trace:"

    invoke-static {v12, v2, v3, v0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "seedlingsdk_plugin_load_class_error"

    invoke-direct {p0, v2, v1, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_dd
    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    if-nez v0, :cond_f3

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    const-string v3, "initManager is null."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_f3
    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    return-object p0
.end method

.method private final loadSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 26

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v0, "Start load seedling manager for "

    const-string v2, "."

    move/from16 v12, p1

    invoke-static {v0, v12, v2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_1b
    invoke-direct/range {p0 .. p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->gainPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const-string v2, "com.oplus.seedling.framework.manager.SeedlingManager"

    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "pluginDexClassLoader.loa…GE_PATH_SEEDLING_MANAGER)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "clazz.declaredMethods"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_36
    if-ge v4, v2, :cond_77

    aget-object v5, v0, v4

    const-string v6, "getInstance"

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    sget-object v13, Ly8/c;->a:Ly8/c;

    const-string v14, "PluginManager"

    const-string v15, "Find the method of getInstance."

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-eqz v2, :cond_77

    check-cast v0, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-object v1, v0

    goto :goto_77

    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_77
    :goto_77
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_79
    .catchall {:try_start_1b .. :try_end_79} :catchall_7a

    goto :goto_7f

    :catchall_7a
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_7f
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_bd

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x7c

    const/4 v12, 0x0

    const-string v3, "PluginManager"

    const-string v4, "Exception happen for loadSeedlingManager."

    move-object v10, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SeedlingSdk.sAppContext.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v3, "PluginManager"

    invoke-static {v3, v0}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Exception happen for loadSeedlingManager. trace:"

    invoke-static {v3, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "seedlingsdk_plugin_load_class_error"

    move-object/from16 v4, p0

    invoke-direct {v4, v3, v2, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_bd
    if-nez v1, :cond_d1

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PluginManager"

    const-string v6, "seedlingmanager is null."

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_d1
    return-object v1
.end method

.method private final reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V
    .registers 20

    move-object/from16 v0, p2

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportInitFail pkgName:"

    const-string v3, " errorMsgToEntrance:"

    invoke-static {v2, v1, v3, v0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p4, :cond_28

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PluginManager"

    move-object v6, v2

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_53

    :cond_28
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ", throwable.message:"

    invoke-static {v2, v4, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const-string v4, "PluginManager"

    invoke-static {v4, v3}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " trace: "

    invoke-static {v2, v4, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x7c

    const/4 v13, 0x0

    const-string v4, "PluginManager"

    move-object/from16 v11, p4

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_53
    const-string v3, "pkgName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "seedlingsdk_plugin_init"

    move-object v4, p0

    invoke-direct {p0, v3, v1, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-interface {v2, v1, v0}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 p0, 0x1

    new-array p0, p0, [Lh4/j;

    new-instance v0, Lh4/j;

    const-string v1, "packagename"

    invoke-direct {v0, v1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v0, p0, p2

    invoke-static {p0}, Li4/k0;->i([Lh4/j;)Ljava/util/Map;

    move-result-object v3

    if-eqz p3, :cond_18

    const-string p0, "message"

    invoke-interface {v3, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final showConfigMsg(Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 16

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, " showConfigMsg: "

    invoke-static {p1, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "PluginManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_24

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz p3, :cond_24

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    goto :goto_25

    :cond_24
    move-object p3, p1

    :goto_25
    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_31
    const-string p2, "[pluginConfig]"

    invoke-direct {p0, p2, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    const-string p1, "[hostContext]"

    invoke-direct {p0, p1, p3}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    const-string p1, "[newConfig]"

    invoke-direct {p0, p1, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic showConfigMsg$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showConfigMsg(Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V
    .registers 14

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "showSingleConfigMsg, "

    const-string v2, " densityDpi = "

    const-string v3, ", uiMode = "

    invoke-static {v1, p1, v2, p0, v3}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", whole config = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ly8/c;->a:Ly8/c;

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
.end method

.method private final updateNewConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 16

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v12, Ly8/c;->a:Ly8/c;

    const-string v1, "updateNewConfig, hostPkgName = "

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "PluginManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v1, "com.oplus.secondaryhome"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    const-string p1, "updateNewConfig finish [newConfig]"

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    goto :goto_46

    :cond_35
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    const-string v3, "updateNewConfig, not secondaryhome, do nothing"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_46
    return-void
.end method


# virtual methods
.method public final dispatchConfigurationChanged$pantanal_client_release(Landroid/content/res/Configuration;)V
    .registers 13

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_13
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_26

    :catch_14
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "dispatchConfigurationChanged fail"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public final gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "gainSeedlingManager, entranceType:"

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v14, Ly8/c;->a:Ly8/c;

    const-string v4, "PluginManager"

    const-string v3, ", Start gain seedling manager."

    invoke-static {v1, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v14

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-eqz v13, :cond_46

    const-string v3, "PluginManager"

    const-string v0, ", Seedling manager is already exist,step1."

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v14

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v13

    :cond_46
    iget-object v15, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v15

    :try_start_49
    iget-object v3, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-eqz v13, :cond_7a

    const-string v3, "PluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Seedling manager is already exist,step2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v14

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_49 .. :try_end_78} :catchall_dc

    monitor-exit v15

    return-object v13

    :cond_7a
    const/4 v3, 0x0

    :try_start_7b
    invoke-direct/range {p0 .. p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v13

    if-eqz v13, :cond_da

    const-string v4, "PluginManager"

    iget-object v3, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Seedling manager load success,before save to cache,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/16 v16, 0x0

    move-object v3, v14

    move-object v2, v13

    move-object/from16 v13, v16

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "PluginManager"

    iget-object v0, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Seedling manager load success,after save to cache,"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v0, v2

    move-object v2, v14

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_d9
    .catchall {:try_start_7b .. :try_end_d9} :catchall_dc

    move-object v3, v0

    :cond_da
    monitor-exit v15

    return-object v3

    :catchall_dc
    move-exception v0

    monitor-exit v15

    throw v0
.end method

.method public final getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    return-object p0
.end method

.method public final init(Lcom/oplus/seedling/sdk/callback/InitCallback;Lcom/oplus/seedling/sdk/SeedlingInitConfig;)V
    .registers 19

    const-string v0, "initCallback"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v6, "PluginManager"

    const-string v7, "Start init plugin "

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->registerPluginContextConfigChange$pantanal_client_release()V

    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/SeedlingSdkPluginFileUtils;->initPluginFiles()I

    move-result v0

    const/16 v2, 0x3f2

    if-eq v0, v2, :cond_73

    const/16 v2, 0x3f3

    if-eq v0, v2, :cond_73

    packed-switch v0, :pswitch_data_80

    const-string v2, "init error, because "

    const-string v3, " is not exist, maybe the code is not correct"

    invoke-static {v2, v0, v3}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_7f

    :pswitch_43  #0x3ea
    const/16 v2, 0x3ea

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, "throw exception during init plugin files"

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_7f

    :pswitch_53  #0x3e9
    const/16 v2, 0x3e9

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, "plugin verify error"

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_7f

    :pswitch_63  #0x3e8
    const/16 v2, 0x3e8

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, "plugin copy error"

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v7}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_7f

    :cond_73
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInit$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InitCallback;ZLcom/oplus/seedling/sdk/SeedlingInitConfig;ILjava/lang/Object;)V

    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch 0x3e8
        :pswitch_63  #000003e8
        :pswitch_53  #000003e9
        :pswitch_43  #000003ea
    .end packed-switch
.end method

.method public onPluginUpdated()V
    .registers 1

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeOnTrimMemory(I)V

    return-void
.end method

.method public final quit$pantanal_client_release(Ll4/d;)Ljava/lang/Object;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;

    iget v3, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;

    invoke-direct {v2, v0, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ll4/d;)V

    :goto_1c
    iget-object v1, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->result:Ljava/lang/Object;

    sget-object v3, Lm4/a;->a:Lm4/a;

    iget v4, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_38

    if-ne v4, v5, :cond_30

    iget-object v0, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ly8/d;->c(Ljava/lang/Class;)V

    sget-object v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object v1

    iput-object v6, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    const-wide/16 v7, 0x64

    iput-object v0, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->L$0:Ljava/lang/Object;

    iput v5, v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$quit$1;->label:I

    invoke-static {v7, v8, v2}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5b

    return-object v3

    :cond_5b
    :goto_5b
    move-object v1, v0

    :try_start_5c
    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "PluginManager"

    iget-object v0, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit() initManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    if-eqz v0, :cond_95

    iget-object v2, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    if-eqz v2, :cond_90

    invoke-interface {v2, v0}, Lcom/oplus/seedling/sdk/manager/IInitManager;->quitSdk(Landroid/content/Context;)V

    :cond_90
    iput-object v6, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initManager:Lcom/oplus/seedling/sdk/manager/IInitManager;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_94
    .catchall {:try_start_5c .. :try_end_94} :catchall_97

    goto :goto_9c

    :cond_95
    move-object v0, v6

    goto :goto_9c

    :catchall_97
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_9c
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c4

    sget-object v7, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "quit() exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "PluginManager"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_c4
    :try_start_c4
    sget-object v18, Ly8/c;->a:Ly8/c;

    const-string v19, "PluginManager"

    const-string v20, "quit() interfaceScope.cancel "

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xfc

    const/16 v28, 0x0

    invoke-static/range {v18 .. v28}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getInterfaceScope()Lm7/j0;

    move-result-object v0

    invoke-static {v0, v6, v5}, Lm7/k0;->c(Lm7/j0;Ljava/util/concurrent/CancellationException;I)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_e8
    .catchall {:try_start_c4 .. :try_end_e8} :catchall_e9

    goto :goto_ee

    :catchall_e9
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_ee
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "exit interfaceScope.cancel fail "

    if-eqz v0, :cond_10f

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "PluginManager"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_10f
    :try_start_10f
    sget-object v18, Ly8/c;->a:Ly8/c;

    const-string v19, "PluginManager"

    const-string v20, "quit() coroutineContext.cancelChildren "

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xfc

    const/16 v28, 0x0

    invoke-static/range {v18 .. v28}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getInterfaceScope()Lm7/j0;

    move-result-object v0

    invoke-interface {v0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object v0

    invoke-static {v0, v6, v5, v6}, Li5/j;->d(Ll4/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_137
    .catchall {:try_start_10f .. :try_end_137} :catchall_138

    goto :goto_13d

    :catchall_138
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_13d
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_15c

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "PluginManager"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_15c
    :try_start_15c
    sget-object v18, Ly8/c;->a:Ly8/c;

    const-string v19, "PluginManager"

    const-string v20, "quit() interfaceExecutor.shutdown "

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xfc

    const/16 v28, 0x0

    invoke-static/range {v18 .. v28}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getInterfaceExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getInterfaceExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_18e
    .catchall {:try_start_15c .. :try_end_18e} :catchall_18f

    goto :goto_194

    :catchall_18f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_194
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1b5

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "shutdown interfaceScope.cancel fail "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "PluginManager"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1b5
    iput-object v6, v1, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    invoke-static {}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->shutdown$pantanal_client_release()V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public final registerPluginContextConfigChange$pantanal_client_release()V
    .registers 12

    :try_start_0
    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_1c

    :catchall_17
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3c

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "registerPluginContextConfigChange error "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    :cond_3c
    return-void
.end method

.method public final release()V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release begin,seedlingManagerMap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "PluginManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "seedlingManagerMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    invoke-interface {v1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->release()V

    goto :goto_32

    :cond_42
    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeReleaseSdk()V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pluginDexClassLoader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->freeVariable()V

    return-void
.end method

.method public final releaseSeedlingManager(I)V
    .registers 14

    const-string v0, "releaseSeedlingManager, entranceType:"

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-eqz p0, :cond_30

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p1, ", Start release seedling manager."

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->release()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    if-nez p0, :cond_49

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p0, ", seedlingManager is null, ignore"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_49
    return-void
.end method

.method public final reportPluginFileInitExecution(Ljava/lang/String;)V
    .registers 15

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportPluginFileInitExecution pkgName:"

    const-string v2, "[1.2.22] "

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "PluginManager"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v1, "pkgName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "seedlingsdk_plugin_init"

    invoke-direct {p0, v1, v0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterPluginContextConfigChange$pantanal_client_release()V
    .registers 2

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
