.class public final Lpantanal/app/groupcard/plugin/CardGroupPluginManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/pantanal/plugin/PluginUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardGroupPluginManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardGroupPluginManager.kt\npantanal/app/groupcard/plugin/CardGroupPluginManager\n+ 2 PluginFileUtils.kt\ncom/oplus/pantanal/plugin/PluginFileUtils\n*L\n1#1,487:1\n142#2,20:488\n*S KotlinDebug\n*F\n+ 1 CardGroupPluginManager.kt\npantanal/app/groupcard/plugin/CardGroupPluginManager\n*L\n212#1:488,20\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

.field public static final ERROR_TYPE_COPY_PLUGIN:I = 0x1

.field public static final ERROR_TYPE_LOAD_PLUGIN:I = 0x2

.field public static final ERROR_TYPE_THROW_EXCE_ERROR:I = 0x4

.field public static final ERROR_TYPE_VERIFY_ERROR:I = 0x3

.field public static final SIZE_GROUP_CARD:Ljava/lang/String; = "222220070"

.field private static final TAG:Ljava/lang/String; = "CardGroupPluginManager"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lpantanal/app/groupcard/plugin/CardGroupPluginManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entrance:Lpantanal/app/bean/Entrance;

.field private entranceSdkVersionCode:Ljava/lang/Integer;

.field private hostConfigurationChangedCallback:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

.field private initManager:Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

.field private pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

.field private pluginDexClassLoader:Ldalvik/system/DexClassLoader;

.field private pluginGitCommitHash:Ljava/lang/String;

.field private pluginVersionCode:Ljava/lang/Integer;

.field private pluginVersionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->Companion:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion$sInstance$2;->INSTANCE:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$Companion$sInstance$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

    invoke-direct {v0, p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;-><init>(Lpantanal/app/groupcard/plugin/CardGroupPluginManager;)V

    iput-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->hostConfigurationChangedCallback:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$showConfigMsg(Lpantanal/app/groupcard/plugin/CardGroupPluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->showConfigMsg(Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final doInit(Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V
    .registers 23

    move-object/from16 v1, p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v3, "CardGroupPluginManager"

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

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v2}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_LOCAL_CONFIG_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

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

    const-class v2, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

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
    if-eqz v14, :cond_aa

    iget-object v0, v1, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_a6

    invoke-direct/range {p0 .. p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, v1, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    :cond_a6
    invoke-direct/range {p0 .. p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->doInitSdk(Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V

    goto :goto_cf

    :cond_aa
    const-string v0, "doInit, localConfig is null, consider this is the first time to copy plugin and failed"

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardGroupPluginManager"

    move-object v3, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v1}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    sget-object v2, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v1, 0x3e8

    move-object/from16 v2, p1

    invoke-interface {v2, v1, v0}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    :goto_cf
    return-void
.end method

.method private final doInitSdk(Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V
    .registers 15

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "doInitSdk,begin."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Ly8/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->entranceSdkVersionCode:Ljava/lang/Integer;

    :try_start_22
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->invokeExchangeVersion()V

    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->invokeInitSdk()V

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {p0}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-interface {p1}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onSuccess()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7a

    const-string v0, "doInitSdk error"

    sget-object v1, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v1}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    sget-object v2, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v1, 0x3ea

    invoke-interface {p1, v1, v0}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardGroupPluginManager"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method private final gainCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;
    .registers 13

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_17

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardGroupPluginManager"

    const-string v3, "cardGroup plugin class loader has inited."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    :cond_17
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method private final initCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;
    .registers 16

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "initCardGroupPluginClassLoader"

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

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;

    sget-object v1, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->INSTANCE:Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;

    invoke-virtual {v1}, Lpantanal/app/groupcard/plugin/Constants$PluginFilePath;->getPATH_PLUGIN_CARD_GROUP$groupcard_interface_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CardGroupSdk.appContext.filesDir.absolutePath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "CardGroupSdk.appContext.classLoader"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v13, v1, v2, v3, v0}, Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v12}, Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;->hookResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v14

    if-eqz v14, :cond_81

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginManager"

    const-string v2, "initCardGroupPluginClassLoader,override classLoader"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v1, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$initCardGroupPluginClassLoader$1$1$1;

    invoke-direct {v1, v14, v12, v13, v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager$initCardGroupPluginClassLoader$1$1$1;-><init>(Landroid/content/Context;Landroid/content/Context;Lpantanal/app/groupcard/plugin/classloader/CardGroupClassLoader;Landroid/content/res/Resources$Theme;)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-class v2, Landroid/view/LayoutInflater;

    const-string v3, "mFactory2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v3, Lcom/oplus/pantanal/plugin/InflaterFactory;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lcom/oplus/pantanal/plugin/InflaterFactory;-><init>(Landroid/view/LayoutInflater$Factory2;Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    :cond_81
    return-object v13
.end method

.method private final invokeExchangeVersion()V
    .registers 16

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeExchangeVersion"

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

    :try_start_13
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->loadCardGroupInitManager()Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const-string v2, "1.2.22-f1ec63f"

    const-string v3, "1002022"

    invoke-interface {v0, v2, v3}, Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;->exchangeVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    goto :goto_25

    :cond_24
    move-object v12, v1

    :goto_25
    if-eqz v12, :cond_94

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    const-string v1, "CardGroupPluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeExchangeVersion,cardGroup plugin version name = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",VersionCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object v13, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginVersionName:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginVersionCode:Ljava/lang/Integer;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_7b

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginGitCommitHash:Ljava/lang/String;

    goto :goto_8c

    :cond_7b
    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeExchangeVersion,return list size < 3!"

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

    :goto_8c
    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_8e
    .catchall {:try_start_13 .. :try_end_8e} :catchall_8f

    goto :goto_94

    :catchall_8f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :cond_94
    :goto_94
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_bb

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeExchangeVersion error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_bb
    return-void
.end method

.method private final invokeInitSdk()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeInitSdk"

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

    :try_start_13
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->loadCardGroupInitManager()Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    move-result-object p0

    if-eqz p0, :cond_25

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p0, v0}, Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;->initSdk(Landroid/content/Context;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    if-nez p0, :cond_39

    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeInitSdk invoke failed via manager is null."

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

    :cond_39
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_41
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_68

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeInitSdk error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_68
    return-void
.end method

.method private final invokeOnTrimMemory(I)V
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeOnTrimMemory"

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

    :try_start_13
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->loadCardGroupInitManager()Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-interface {p0, p1}, Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;->onTrimMemory(I)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    if-nez p0, :cond_33

    const-string v1, "CardGroupPluginManager"

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

    move-result-object p0

    if-eqz p0, :cond_62

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeOnTrimMemory error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_62
    return-void
.end method

.method private final invokeReleaseSdk()V
    .registers 13

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeReleaseSdk"

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

    :try_start_13
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->loadCardGroupInitManager()Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;->releaseSdk()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    if-nez p0, :cond_33

    const-string v1, "CardGroupPluginManager"

    const-string v2, "invokeReleaseSdk invoke failed via manager is null."

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

    move-result-object p0

    if-eqz p0, :cond_62

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeReleaseSdk error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_62
    return-void
.end method

.method private final loadCardGroupInitManager()Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "loadCardGroupInitManager"

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

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initManager:Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    if-eqz v0, :cond_2b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "CardGroupPluginManager"

    const-string v2, "loadCardGroupInitManager,initManager has init,just return"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initManager:Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    return-object p0

    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->gainCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const-string v1, "pantanal.appplugin.groupcard.CardGroupInitManager"

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pluginDexClassLoader.loa…_CARD_GROUP_INIT_MANAGER)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    if-eqz v2, :cond_4c

    move-object v1, v0

    check-cast v1, Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    :cond_4c
    iput-object v1, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initManager:Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    const-string v2, "CardGroupPluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initManager:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v12, 0x0

    move-object v0, v11

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v12

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_7a
    .catchall {:try_start_2b .. :try_end_7a} :catchall_7b

    goto :goto_80

    :catchall_7b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_80
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_ad

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happen for loadCardGroupInitManager:"

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

    const-string v2, "CardGroupPluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->entrance:Lpantanal/app/bean/Entrance;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->reportGroupCardStateStatistics(Lpantanal/app/bean/Entrance;I)V

    :cond_ad
    iget-object v0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initManager:Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    if-nez v0, :cond_c3

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "CardGroupPluginManager"

    const-string v3, "initManager is null."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_c3
    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->initManager:Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;

    return-object p0
.end method

.method private final reportGroupCardStateStatistics(Lpantanal/app/bean/Entrance;I)V
    .registers 11

    const/4 p0, 0x3

    new-array p0, p0, [Lh4/j;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result p1

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lh4/j;

    const-string v1, "host_id"

    invoke-direct {v0, v1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v0, p0, p1

    const/4 p1, 0x1

    new-instance v0, Lh4/j;

    const-string v1, "card_type"

    const-string v2, "222220070"

    invoke-direct {v0, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p0, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lh4/j;

    const-string v1, "state"

    invoke-direct {v0, v1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p0, p1

    invoke-static {p0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lpantanal/app/groupcard/plugin/CardGroupReflectUtils;->getPluginContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_43

    sget-object p0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {p0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object p0

    :cond_43
    move-object v2, p0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v3, "group_card_state"

    invoke-static/range {v2 .. v7}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final showConfigMsg(Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 16

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, " showConfigMsg: "

    invoke-static {p1, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "CardGroupPluginManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

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

    invoke-direct {p0, p2, p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    const-string p1, "[hostContext]"

    invoke-direct {p0, p1, p3}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    const-string p1, "[newConfig]"

    invoke-direct {p0, p1, p4}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic showConfigMsg$default(Lpantanal/app/groupcard/plugin/CardGroupPluginManager;Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;ILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2, p3, p4}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->showConfigMsg(Ljava/lang/String;Lcom/oplus/pantanal/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

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

    const-string v1, "CardGroupPluginManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getPluginContext()Lcom/oplus/pantanal/plugin/PluginContext;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginContext:Lcom/oplus/pantanal/plugin/PluginContext;

    return-object p0
.end method

.method public final getPluginGroupCardVersion()Ljava/lang/Integer;
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginVersionCode:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPluginGroupCardVersion : pluginVersionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "CardGroupPluginManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->pluginVersionCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final init(Lpantanal/app/bean/Entrance;Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "entrance"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCardPluginInitCallback"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v5, "CardGroupPluginManager"

    const-string v6, "init,Start init plugin "

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object v2, v1, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual/range {p0 .. p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->registerPluginContextConfigChange$groupcard_interface_release()V

    invoke-static {}, Lpantanal/app/groupcard/plugin/CardGroupPluginFileUtils;->initPluginFiles()I

    move-result v4

    const/16 v5, 0x3f2

    if-eq v4, v5, :cond_18d

    const/16 v5, 0x3f3

    if-eq v4, v5, :cond_18d

    packed-switch v4, :pswitch_data_192

    const-string v1, "init error, because "

    const-string v2, " is not exist, maybe the code is not correct"

    invoke-static {v1, v4, v2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardGroupPluginManager"

    move-object v4, v0

    move-object v6, v1

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v2, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v0, 0x3ed

    invoke-interface {v3, v0, v1}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    goto/16 :goto_190

    :pswitch_61  #0x3ea
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardGroupPluginManager"

    const-string v6, "init,throw exception during init plugin files"

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v4, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v0, 0x3ea

    const-string v4, "throw exception during init plugin files"

    invoke-interface {v3, v0, v4}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {v1, v2, v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->reportGroupCardStateStatistics(Lpantanal/app/bean/Entrance;I)V

    goto/16 :goto_190

    :pswitch_8a  #0x3e9
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardGroupPluginManager"

    const-string v6, "init,plugin verify error"

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v4, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v0, 0x3e9

    const-string v4, "plugin verify error"

    invoke-interface {v3, v0, v4}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {v1, v2, v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->reportGroupCardStateStatistics(Lpantanal/app/bean/Entrance;I)V

    goto/16 :goto_190

    :pswitch_b3  #0x3e8
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15d

    const-string v15, "checkIsAboveOSVersion14.1"

    :try_start_bc
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x0

    const/16 v6, 0x21

    if-lt v4, v6, :cond_f6

    sget v4, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    if-lt v4, v6, :cond_ca

    move v14, v5

    goto :goto_cc

    :cond_ca
    move/from16 v14, v16

    :goto_cc
    const-string v5, "OSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", above T, result="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/16 v16, 0x0

    move-object v4, v0

    move v0, v14

    move-object/from16 v14, v16

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move/from16 v16, v0

    goto :goto_107

    :cond_f6
    const-string v5, "OSUtils"

    const-string v6, "checkIsAboveOSVersion14.1, below T, return false"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_107
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_10b
    .catchall {:try_start_bc .. :try_end_10b} :catchall_10c

    goto :goto_111

    :catchall_10c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_111
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_138

    sget-object v16, Ly8/c;->a:Ly8/c;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, " error, return false, msg:"

    invoke-static {v15, v5, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xfc

    const/16 v26, 0x0

    const-string v17, "OSUtils"

    invoke-static/range {v16 .. v26}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_138
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v5, v0, Lh4/k$a;

    if-eqz v5, :cond_13f

    move-object v0, v4

    :cond_13f
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15d

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardGroupPluginManager"

    const-string v6, "init,plugin copy error,host is assistantScreen and os version is below 14.1"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {v1, v3}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->doInit(Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V

    goto :goto_190

    :cond_15d
    sget-object v15, Ly8/c;->a:Ly8/c;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "CardGroupPluginManager"

    const-string v17, "init,plugin copy error"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getInitStatus()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    sget-object v4, Lpantanal/app/groupcard/CardGroupSdk$InitStatus;->NOT_INITIALIZED:Lpantanal/app/groupcard/CardGroupSdk$InitStatus;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/16 v0, 0x3e8

    const-string v4, "plugin copy error"

    invoke-interface {v3, v0, v4}, Lpantanal/app/groupcard/GroupCardPluginInitCallback;->onFailed(ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {v1, v2, v0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->reportGroupCardStateStatistics(Lpantanal/app/bean/Entrance;I)V

    goto :goto_190

    :cond_18d
    invoke-direct {v1, v3}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->doInit(Lpantanal/app/groupcard/GroupCardPluginInitCallback;)V

    :goto_190
    return-void

    nop

    :pswitch_data_192
    .packed-switch 0x3e8
        :pswitch_b3  #000003e8
        :pswitch_8a  #000003e9
        :pswitch_61  #000003ea
    .end packed-switch
.end method

.method public final loadGroupCardWrapper(Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "cardCreator"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "decisionProxy"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contentManagerProxy"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v6, "CardGroupPluginManager"

    const-string v7, "loadGroupCardWrapper"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v16, 0x0

    const/4 v15, 0x2

    :try_start_2d
    invoke-direct/range {p0 .. p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->gainCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v5

    const-string v6, "pantanal.appplugin.groupcard.GroupCardWrapper"

    invoke-virtual {v5, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v5, "pluginDexClassLoader.loa…_PATH_CARD_GROUP_WRAPPER)"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "CardGroupPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadGroupCardWrapper,clazz:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4f
    .catchall {:try_start_2d .. :try_end_4f} :catchall_ed

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    move-object v5, v4

    move-object/from16 v19, v14

    move/from16 v14, v17

    move v1, v15

    move-object/from16 v15, v18

    :try_start_61
    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v15, 0x3

    new-array v5, v15, [Ljava/lang/Class;

    const-class v6, Lpantanal/app/groupcard/ICardCreator;

    const/16 v17, 0x0

    aput-object v6, v5, v17

    const-class v6, Lpantanal/app/groupcard/IServiceDecisionProxy;

    const/16 v18, 0x1

    aput-object v6, v5, v18

    const-class v6, Lpantanal/app/groupcard/IContentManagerProxy;

    aput-object v6, v5, v1

    move-object/from16 v6, v19

    invoke-virtual {v6, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    const-string v6, "CardGroupPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadGroupCardWrapper,constructor:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_90
    .catchall {:try_start_61 .. :try_end_90} :catchall_ea

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    move-object v5, v4

    move-object/from16 v21, v14

    move/from16 v14, v19

    move v1, v15

    move-object/from16 v15, v20

    :try_start_a2
    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v17

    aput-object v2, v1, v18
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_e7

    const/4 v2, 0x2

    :try_start_ac
    aput-object v3, v1, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lpantanal/app/groupcard/plugininterface/IGroupCard;

    if-eqz v1, :cond_bc

    check-cast v0, Lpantanal/app/groupcard/plugininterface/IGroupCard;
    :try_end_ba
    .catchall {:try_start_ac .. :try_end_ba} :catchall_e5

    move-object v1, v0

    goto :goto_be

    :cond_bc
    move-object/from16 v1, v16

    :goto_be
    :try_start_be
    const-string v6, "CardGroupPluginManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGroupCardWrapper,cardGroupWrapper:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object v5, v4

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_e0
    .catchall {:try_start_be .. :try_end_e0} :catchall_e1

    goto :goto_f5

    :catchall_e1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_ef

    :catchall_e5
    move-exception v0

    goto :goto_ef

    :catchall_e7
    move-exception v0

    const/4 v2, 0x2

    goto :goto_ef

    :catchall_ea
    move-exception v0

    move v2, v1

    goto :goto_ef

    :catchall_ed
    move-exception v0

    move v2, v15

    :goto_ef
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v16

    :goto_f5
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_124

    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception happen for loadGroupCardWrapper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "CardGroupPluginManager"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v3, v2

    move-object/from16 v2, p0

    iget-object v0, v2, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-direct {v2, v0, v3}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->reportGroupCardStateStatistics(Lpantanal/app/bean/Entrance;I)V

    :cond_124
    if-nez v1, :cond_138

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardGroupPluginManager"

    const-string v6, "loadGroupCardWrapper is null."

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_138
    return-object v1
.end method

.method public final loadPluginGroupCardManager()Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;
    .registers 25

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v2, "CardGroupPluginManager"

    const-string v3, "loadPluginGroupCardManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_14
    invoke-direct/range {p0 .. p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->gainCardGroupPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v2

    const-string v3, "pantanal.appplugin.groupcard.PluginGroupCardManager"

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "pluginDexClassLoader.loa…LUGIN_GROUP_CARD_MANAGER)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "INSTANCE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;

    if-eqz v3, :cond_35

    check-cast v2, Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_5c

    move-object v12, v2

    goto :goto_36

    :cond_35
    move-object v12, v1

    :goto_36
    :try_start_36
    const-string v2, "CardGroupPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pluginGroupCardManager:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_59

    goto :goto_62

    :catchall_59
    move-exception v0

    move-object v1, v12

    goto :goto_5d

    :catchall_5c
    move-exception v0

    :goto_5d
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v1

    :goto_62
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_89

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception happen for loadPluginGroupCardManager:"

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

    const-string v2, "CardGroupPluginManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_89
    if-nez v12, :cond_a4

    sget-object v13, Ly8/c;->a:Ly8/c;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    const/16 v23, 0x0

    const-string v14, "CardGroupPluginManager"

    const-string v15, "loadPluginGroupCardManager is null."

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a4
    return-object v12
.end method

.method public onPluginUpdated()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "onPluginUpdated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->invokeOnTrimMemory(I)V

    return-void
.end method

.method public final registerPluginContextConfigChange$groupcard_interface_release()V
    .registers 4

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->hostConfigurationChangedCallback:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->hostConfigurationChangedCallback:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final release()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "CardGroupPluginManager"

    const-string v2, "release begin"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->invokeReleaseSdk()V

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->hostConfigurationChangedCallback:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final unregisterPluginContextConfigChange$groupcard_interface_release()V
    .registers 2

    sget-object v0, Lpantanal/app/groupcard/CardGroupSdk;->INSTANCE:Lpantanal/app/groupcard/CardGroupSdk;

    invoke-virtual {v0}, Lpantanal/app/groupcard/CardGroupSdk;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/CardGroupPluginManager;->hostConfigurationChangedCallback:Lpantanal/app/groupcard/plugin/CardGroupPluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
