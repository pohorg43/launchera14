.class final Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchInitImpl;->initBranchSdk(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchInitImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchInitImpl.kt\ncom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,234:1\n120#2,10:235\n*S KotlinDebug\n*F\n+ 1 BranchInitImpl.kt\ncom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1\n*L\n91#1:235,10\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.allapps.branch.BranchInitImpl$initBranchSdk$1"
    f = "BranchInitImpl.kt"
    l = {
        0xf0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/BranchInitImpl;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iput-object p2, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;

    iget-object v1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;-><init>(Lcom/android/launcher3/allapps/branch/BranchInitImpl;Landroid/content/Context;Ll4/d;)V

    iput-object p1, v0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    const-string v0, ""

    const-string v1, "BranchInitImpl"

    sget-object v2, Lm4/a;->a:Lm4/a;

    iget v3, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2b

    if-ne v3, v5, :cond_23

    iget-object v2, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$2:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    iget-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lv7/a;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lm7/j0;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v8, p0

    goto :goto_4f

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->getIntiMutex()Lv7/a;

    move-result-object v6

    iget-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->this$0:Lcom/android/launcher3/allapps/branch/BranchInitImpl;

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->L$3:Ljava/lang/Object;

    iput v5, p0, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1;->label:I

    invoke-interface {v6, v4, p0}, Lv7/a;->b(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4d

    return-object v2

    :cond_4d
    move-object v8, p1

    move-object v2, v7

    :goto_4f
    :try_start_4f
    sget-object p0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMBranchInitCompleted()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "userUnlocked:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    if-eqz p0, :cond_79

    move v10, v5

    goto :goto_7a

    :cond_79
    move v10, v9

    :goto_7a
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", completed:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_86

    move v10, v5

    goto :goto_87

    :cond_86
    move v10, v9

    :goto_87
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_16d

    if-nez p1, :cond_16d

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->protectExpired()Z

    move-result p0

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSetting()Z

    move-result p1

    if-eqz p1, :cond_a3

    if-eqz p0, :cond_a3

    move v7, v5

    goto :goto_a4

    :cond_a3
    move v7, v9

    :goto_a4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasOptedIn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_b2

    move v11, v5

    goto :goto_b3

    :cond_b2
    move v11, v9

    :goto_b3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", personalizeSearchSetting"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_bf

    move p1, v5

    goto :goto_c0

    :cond_bf
    move p1, v9

    :goto_c0
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", protectExpired:"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_cc

    move p0, v5

    goto :goto_cd

    :cond_cc
    move p0, v9

    :goto_cd
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_dc

    sget-object p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    goto :goto_de

    :cond_dc
    sget-object p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    :goto_de
    new-instance p1, Lio/branch/search/BranchConfiguration;

    invoke-direct {p1}, Lio/branch/search/BranchConfiguration;-><init>()V

    invoke-virtual {p1, p0}, Lio/branch/search/BranchConfiguration;->trackingStatus(Lio/branch/search/BranchConfiguration$BranchTrackingStatus;)Lio/branch/search/BranchConfiguration;

    move-result-object p0

    const-string p1, "launcher_version"

    invoke-static {v3}, Lcom/android/common/config/VersionInfo;->getLauncherVersionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lh4/j;

    invoke-direct {v11, p1, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration;->setCustomAttribution(Ljava/util/Map;)Lio/branch/search/BranchConfiguration;

    const-string p1, "key_live_jd3EAsCCsxHB5U4PAHwTMhhmtChXLuGJ"

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration;->setBranchKey(Ljava/lang/String;)Lio/branch/search/BranchConfiguration;

    new-instance p1, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$1;

    invoke-direct {p1}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$1;-><init>()V

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration;->a(Le4/a;)V

    invoke-static {v3, p0}, Lio/branch/search/BranchSearch;->init(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/BranchSearch;

    new-instance p0, Lio/branch/search/CustomEvent;

    invoke-direct {p0}, Lio/branch/search/CustomEvent;-><init>()V

    const-string p1, "SDK_INIT"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v10}, Lio/branch/search/CustomEvent;->set(Ljava/lang/String;Ljava/lang/Object;)Lio/branch/search/CustomEvent;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEvent;->track()V

    if-eqz v7, :cond_11e

    invoke-static {v2, v9, v5, v4}, Lcom/android/launcher3/allapps/branch/BranchInitImpl;->optTrack$default(Lcom/android/launcher3/allapps/branch/BranchInitImpl;ZILjava/lang/Object;)V

    :cond_11e
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_125
    .catchall {:try_start_4f .. :try_end_125} :catchall_173

    :try_start_125
    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_130

    goto :goto_136

    :cond_130
    const-string v0, "AdvertisingIdClient.getA…gIdInfo(context).id ?: \"\""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    :goto_136
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_138} :catch_139
    .catchall {:try_start_125 .. :try_end_138} :catchall_173

    goto :goto_152

    :catch_139
    move-exception p1

    :try_start_13a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_152
    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object v9, Lr7/v;->a:Lm7/b2;

    new-instance v11, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;

    invoke-direct {v11, p0, v3, v4}, Lcom/android/launcher3/allapps/branch/BranchInitImpl$initBranchSdk$1$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Ll4/d;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    invoke-static {v3}, Lcom/android/launcher3/allapps/branch/BranchManager;->unregisterReceiverSafely(Landroid/content/Context;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getMBranchInitCompleted()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_16d
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_16f
    .catchall {:try_start_13a .. :try_end_16f} :catchall_173

    invoke-interface {v6, v4}, Lv7/a;->a(Ljava/lang/Object;)V

    return-object p0

    :catchall_173
    move-exception p0

    invoke-interface {v6, v4}, Lv7/a;->a(Ljava/lang/Object;)V

    throw p0
.end method
