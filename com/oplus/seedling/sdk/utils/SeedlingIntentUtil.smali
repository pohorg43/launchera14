.class public final Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AUTHORITIES:Ljava/lang/String; = "com.oplus.pantanal.ums.IntentProvider"

.field private static final BUNDLE_KEY_CALL_RESULT:Ljava/lang/String; = "result"

.field private static final BUNDLE_KEY_FLUID_CLOUD_SUPPORT:Ljava/lang/String; = "is_fluid_cloud_support"

.field private static final BUNDLE_KEY_SEEDLING_SUPPORT:Ljava/lang/String; = "is_seedling_support"

.field private static final BUNDLE_KEY_SYSTEM_INTENT_SUPPORT:Ljava/lang/String; = "is_system_send_intent_support"

.field private static final CACHE_TIME_DURING:J = 0xbb8L

.field private static final CANCEL_INTENT:Ljava/lang/String; = "content://com.oplus.pantanal.ums.IntentProvider"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;

.field private static final INTENT_PROVIDER_URI:Landroid/net/Uri;

.field private static final KEY_CANCEL_PACKAGE:Ljava/lang/String; = "packageName"

.field private static final KEY_IS_USER_UNLOCKED:Ljava/lang/String; = "isUserUnlocked"

.field private static final META_KEY_SEEDLING_CARD_SUPPORT:Ljava/lang/String; = "isSeedlingCardSupport"

.field private static final METHOD_CANCEL_INTENTS:Ljava/lang/String; = "cancel_intents"

.field private static final METHOD_FLUID_CLOUD_SUPPORT:Ljava/lang/String; = "isFluidCloudSupport"

.field private static final METHOD_INTENT_ERROR:I = 0x0

.field private static final METHOD_SEEDLING_SUPPORT:Ljava/lang/String; = "isSeedlingSupport"

.field private static final METHOD_SYSTEM_INTENT_SUPPORT:Ljava/lang/String; = "isSystemSendIntentSupport"

.field private static final TAG:Ljava/lang/String; = "SeedlingIntentUtil"

.field private static final keyCacheTimeMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->INSTANCE:Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;

    const-string v0, "content://com.oplus.pantanal.ums.IntentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(CANCEL_INTENT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->INTENT_PROVIDER_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->keyCacheTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final acquireUnstableContentProviderClient$pantanal_client_release(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireUnstableContentProviderClient, uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pgkName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v2

    if-eqz v2, :cond_52

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string p0, ", use userContext"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedlingIntentUtil"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object p0

    if-eqz p0, :cond_50

    invoke-interface {p0, p1}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    goto :goto_72

    :cond_50
    const/4 p0, 0x0

    goto :goto_72

    :cond_52
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, ", use normal context"

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v11, "SeedlingIntentUtil"

    move-object v0, v1

    move-object v1, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    :goto_72
    return-object p0
.end method

.method private static final cancelIntent(Landroid/content/Context;Ljava/lang/String;)I
    .registers 30
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "result"

    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cancelIntent entrancePkgName:"

    invoke-static {v4, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v15, Ly8/c;->a:Ly8/c;

    const-string v4, ", host be killed cancel: "

    invoke-static {v3, v4, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "SeedlingIntentUtil"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v15

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v14, 0x0

    :try_start_28
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "packageName"

    const-string v6, "["

    const/4 v7, 0x4

    invoke-static {v0, v6, v2, v14, v7}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    const-string v6, "]"

    invoke-static {v0, v6, v2, v14, v7}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.oplus.pantanal.ums.IntentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "parse(CANCEL_INTENT)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->acquireUnstableContentProviderClient$pantanal_client_release(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_ff

    if-nez v2, :cond_80

    :try_start_52
    const-string v5, "SeedlingIntentUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error, providerClient is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_65
    .catchall {:try_start_52 .. :try_end_65} :catchall_7a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v0, 0x0

    move-object v4, v15

    move v1, v14

    move-object v14, v0

    :try_start_71
    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_78

    move/from16 v16, v1

    goto/16 :goto_eb

    :catchall_78
    move-exception v0

    goto :goto_7c

    :catchall_7a
    move-exception v0

    move v1, v14

    :goto_7c
    move/from16 v16, v1

    goto/16 :goto_102

    :cond_80
    :try_start_80
    const-string v0, "cancel_intents"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_f4

    :try_start_87
    invoke-static {v2, v5}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_c6

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    goto :goto_c6

    :cond_93
    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_ff

    :try_start_97
    const-string v5, "SeedlingIntentUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " result:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_ad
    .catchall {:try_start_97 .. :try_end_ad} :catchall_c1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v0, 0x0

    move-object v4, v15

    move/from16 v16, v14

    move-object v14, v0

    :try_start_ba
    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_bf

    move v14, v1

    goto :goto_ed

    :catchall_bf
    move-exception v0

    goto :goto_c4

    :catchall_c1
    move-exception v0

    move/from16 v16, v14

    :goto_c4
    move v14, v1

    goto :goto_104

    :cond_c6
    :goto_c6
    move/from16 v16, v14

    :try_start_c8
    const-string v5, "SeedlingIntentUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, resultBundle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v15

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_eb
    .catchall {:try_start_c8 .. :try_end_eb} :catchall_f2

    :goto_eb
    move/from16 v14, v16

    :goto_ed
    :try_start_ed
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_ef
    .catchall {:try_start_ed .. :try_end_ef} :catchall_f0

    goto :goto_108

    :catchall_f0
    move-exception v0

    goto :goto_104

    :catchall_f2
    move-exception v0

    goto :goto_102

    :catchall_f4
    move-exception v0

    move/from16 v16, v14

    move-object v1, v0

    :try_start_f8
    throw v1
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f9

    :catchall_f9
    move-exception v0

    move-object v4, v0

    :try_start_fb
    invoke-static {v2, v1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_f2

    :catchall_ff
    move-exception v0

    move/from16 v16, v14

    :goto_102
    move/from16 v14, v16

    :goto_104
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_108
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_131

    sget-object v17, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onFailure, errorMsg:"

    invoke-static {v3, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "SeedlingIntentUtil"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move/from16 v14, v16

    :cond_131
    return v14
.end method

.method private static final getBooleanMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedlingIntentUtil"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBooleanMetaValue, key:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    goto :goto_41

    :catchall_3c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_41
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_63

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getBooleanMetaValue error, key:"

    const-string v1, ", errorMsg:"

    invoke-static {p1, p2, v1, p0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedlingIntentUtil"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_63
    return p3
.end method

.method public static synthetic getBooleanMetaValue$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z
    .registers 6

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->getBooleanMetaValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final getIsSupportSeedlingMetaValue(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v1, "com.oplus.pantanal.ums"

    const-string v2, "isSeedlingCardSupport"

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->getBooleanMetaValue$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final hostBeKilled(Landroid/content/Context;Ljava/util/List;)I
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->cancelIntent(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p1, "hostBeKilled, cancelIntent:"

    invoke-static {p1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingIntentUtil"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return p0
.end method

.method private static final isInCacheTime(Ljava/lang/String;J)Z
    .registers 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->keyCacheTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-gez v1, :cond_50

    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInCacheTime,key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " true, lastCacheTime="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", currentTimeFromBoot="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedlingIntentUtil"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_50
    const/4 p0, 0x0

    return p0
.end method

.method private static final isSupportFeatureFromUms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSupportFeatureFromUms pgName:"

    const-string v4, ",callMethodName: "

    invoke-static {v3, v2, v4, v0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2e

    sget-object v5, Ly8/c;->a:Ly8/c;

    const-string v0, " error, because isUserUnlocked is false"

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "SeedlingIntentUtil"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v4

    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isInCacheTime(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v0, 0x1

    return v0

    :cond_3a
    :try_start_3a
    sget-object v3, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->INTENT_PROVIDER_URI:Landroid/net/Uri;

    move-object/from16 v7, p0

    invoke-static {v7, v3}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->acquireUnstableContentProviderClient$pantanal_client_release(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    if-nez v3, :cond_67

    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "SeedlingIntentUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error, because providerClient is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_66
    .catchall {:try_start_3a .. :try_end_66} :catchall_de

    goto :goto_d1

    :cond_67
    const/4 v7, 0x0

    :try_start_68
    invoke-virtual {v3, v0, v7, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_d5

    :try_start_6c
    invoke-static {v3, v7}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_a4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_78

    goto :goto_a4

    :cond_78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_7c
    .catchall {:try_start_6c .. :try_end_7c} :catchall_de

    :try_start_7c
    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "SeedlingIntentUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isSupport = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    :try_end_a1
    .catchall {:try_start_7c .. :try_end_a1} :catchall_a2

    goto :goto_d2

    :catchall_a2
    move-exception v0

    goto :goto_e0

    :cond_a4
    :goto_a4
    :try_start_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error, resultBundle:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bundleKey:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "SeedlingIntentUtil"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_d1
    .catchall {:try_start_a4 .. :try_end_d1} :catchall_de

    :goto_d1
    move v3, v4

    :goto_d2
    :try_start_d2
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_d4
    .catchall {:try_start_d2 .. :try_end_d4} :catchall_a2

    goto :goto_e4

    :catchall_d5
    move-exception v0

    move-object v7, v0

    :try_start_d7
    throw v7
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception v0

    move-object v8, v0

    :try_start_da
    invoke-static {v3, v7}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v0

    move v3, v4

    :goto_e0
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_e4
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_106

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, " error errorMsg = "

    invoke-static {v2, v3, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "SeedlingIntentUtil"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_107

    :cond_106
    move v4, v3

    :goto_107
    if-eqz v4, :cond_112

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->keyCacheTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_112
    return v4
.end method

.method private static final isSystemUser(Landroid/content/Context;)Z
    .registers 23
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v1, ", packageName:"

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v5, 0x0

    :try_start_11
    const-class v6, Landroid/os/UserHandle;

    const-string v7, "USER_SYSTEM"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-class v7, Landroid/app/ActivityManager;

    const-string v8, "getCurrentUser"

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_43

    move v9, v4

    :cond_43
    iput-boolean v9, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "by reflection, isSystemUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", userId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userSystem:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v8, Ly8/c;->a:Ly8/c;

    const-string v9, "SeedlingIntentUtil"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_80
    .catchall {:try_start_11 .. :try_end_80} :catchall_81

    goto :goto_86

    :catchall_81
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_86
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_104

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v6, "isSystemUser error, packageName:"

    const-string v7, ", errorMsg:"

    invoke-static {v6, v2, v7, v0}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingIntentUtil"

    move-object v8, v0

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v6, "user"

    move-object/from16 v7, p0

    invoke-virtual {v7, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/os/UserManager;

    if-eqz v7, :cond_ba

    move-object v5, v6

    check-cast v5, Landroid/os/UserManager;

    :cond_ba
    if-eqz v5, :cond_c1

    invoke-virtual {v5}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v4

    goto :goto_d7

    :cond_c1
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "SeedlingIntentUtil"

    const-string v13, "isSystemUser = null, default = true "

    move-object v11, v0

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_d7
    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "by getService, isSystemUser = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "SeedlingIntentUtil"

    move-object v11, v0

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_104
    iget-boolean v0, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method public static final isUserUnlocked(Landroid/content/Context;)Z
    .registers 20
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isUserUnlocked, pkgName:"

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "isUserUnlocked"

    invoke-static {v4, v2, v3}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isInCacheTime(Ljava/lang/String;J)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1f

    return v6

    :cond_1f
    const-string v5, "user"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Landroid/os/UserManager;

    const/4 v7, 0x0

    if-eqz v5, :cond_2d

    check-cast v0, Landroid/os/UserManager;

    goto :goto_2e

    :cond_2d
    move-object v0, v7

    :goto_2e
    sget-object v5, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v5}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-interface {v5}, Lcom/oplus/channel/server/IUserContext;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    goto :goto_3c

    :cond_3b
    move-object v5, v7

    :goto_3c
    if-eqz v5, :cond_6f

    sget-object v8, Ly8/c;->a:Ly8/c;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with userHandle:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingIntentUtil"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v0, :cond_91

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_91

    :cond_6f
    sget-object v8, Ly8/c;->a:Ly8/c;

    const-string v5, " without userHandle"

    invoke-static {v1, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingIntentUtil"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v0, :cond_91

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :cond_91
    :goto_91
    if-eqz v7, :cond_98

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_af

    :cond_98
    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v0, " isUserUnlocked = null, default = true"

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "SeedlingIntentUtil"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_af
    if-eqz v6, :cond_ba

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->keyCacheTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    sget-object v7, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isUserUnlocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    const-string v8, "SeedlingIntentUtil"

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v6
.end method

.method public static final queryIsSeedlingSupport$pantanal_client_release(Landroid/content/Context;)Z
    .registers 21
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "queryIsSeedlingSupport pgName:"

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v0, " error, because isUserUnlocked is false"

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedlingIntentUtil"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v3

    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v6, "is_seedling_support"

    invoke-static {v6, v4, v5}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isInCacheTime(Ljava/lang/String;J)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_3d

    return v7

    :cond_3d
    :try_start_3d
    sget-object v0, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->INTENT_PROVIDER_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->acquireUnstableContentProviderClient$pantanal_client_release(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v8

    if-nez v8, :cond_6a

    sget-object v9, Ly8/c;->a:Ly8/c;

    const-string v10, "SeedlingIntentUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error, because providerClient is null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_3d .. :try_end_69} :catchall_be

    goto :goto_ae

    :cond_6a
    :try_start_6a
    const-string v0, "isSeedlingSupport"

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v9}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_b5

    :try_start_71
    invoke-static {v8, v9}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_88

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_be

    if-nez v8, :cond_7d

    goto :goto_88

    :cond_7d
    :try_start_7d
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_84

    move v8, v7

    move v7, v0

    goto :goto_b0

    :catchall_84
    move-exception v0

    move v8, v7

    move v7, v3

    goto :goto_c1

    :cond_88
    :goto_88
    :try_start_88
    sget-object v8, Ly8/c;->a:Ly8/c;

    const-string v9, "SeedlingIntentUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " error, bundle:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_ae
    .catchall {:try_start_88 .. :try_end_ae} :catchall_be

    :goto_ae
    move v7, v3

    move v8, v7

    :goto_b0
    :try_start_b0
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_b3

    goto :goto_c5

    :catchall_b3
    move-exception v0

    goto :goto_c1

    :catchall_b5
    move-exception v0

    move-object v7, v0

    :try_start_b7
    throw v7
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v0

    move-object v9, v0

    :try_start_ba
    invoke-static {v8, v7}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v9
    :try_end_be
    .catchall {:try_start_ba .. :try_end_be} :catchall_be

    :catchall_be
    move-exception v0

    move v7, v3

    move v8, v7

    :goto_c1
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_c5
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v7, " error, because call ums provider error, errorMsg = "

    invoke-static {v2, v7, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v8, Ly8/c;->a:Ly8/c;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingIntentUtil"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v7, v3

    goto :goto_ea

    :cond_e9
    move v3, v8

    :goto_ea
    if-eqz v3, :cond_ee

    move v0, v7

    goto :goto_f2

    :cond_ee
    invoke-static/range {p0 .. p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->getIsSupportSeedlingMetaValue(Landroid/content/Context;)Z

    move-result v0

    :goto_f2
    if-eqz v0, :cond_fd

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v4, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->keyCacheTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSeedlingSupport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBundleKeyExist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSupportFromUms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v8, Ly8/c;->a:Ly8/c;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedlingIntentUtil"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method

.method public static final queryIsSupportFluidCloud$pantanal_client_release(Landroid/content/Context;)Z
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isFluidCloudSupport"

    const-string v1, "is_fluid_cloud_support"

    invoke-static {p0, v0, v1}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isSupportFeatureFromUms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final queryIsSystemSendIntentSupport$pantanal_client_release(Landroid/content/Context;)Z
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ly8/b;->b(ZI)Z

    move-result v2

    const-string v3, "is_system_send_intent_support"

    const-string v4, "isSystemSendIntentSupport"

    if-eqz v2, :cond_16

    invoke-static {p0, v4, v3}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isSupportFeatureFromUms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_23

    :cond_16
    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isSystemUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {p0, v4, v3}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->isSupportFeatureFromUms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    move v0, v1

    :cond_23
    :goto_23
    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string p0, "queryIsSystemSendIntentSupport, result: "

    invoke-static {p0, v0}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingIntentUtil"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return v0
.end method
