.class public final Lcom/android/launcher3/card/seed/SeedCardClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

.field public static final SUPPORT_LOAD_TIMEOUT:Z = true

.field private static final TAG:Ljava/lang/String; = "SeedCardClient"

.field private static final US_TAG:Ljava/lang/String; = "panta-sugg-SeedCardClient"

.field private static context:Landroid/content/Context;

.field private static final extraDataRuleSource$delegate:Lh4/f;

.field private static final seedStatusMonitor$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-direct {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient$seedStatusMonitor$2;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient$seedStatusMonitor$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->seedStatusMonitor$delegate:Lh4/f;

    sget-object v0, Lkotlin/a;->b:Lkotlin/a;

    sget-object v1, Lcom/android/launcher3/card/seed/SeedCardClient$extraDataRuleSource$2;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient$extraDataRuleSource$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->extraDataRuleSource$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->initExtraDataRuleSourceAsync$lambda$1$lambda$0()V

    return-void
.end method

.method private static final initExtraDataRuleSourceAsync$lambda$1$lambda$0()V
    .registers 2

    const-string v0, "SeedCardClient"

    const-string v1, "initExtraDataRuleSourceAsync ing..."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->fetchAnalogousCards()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->registerObserver$OplusLauncher_RealmePallExportAallRelease()V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->extraDataRuleSource$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    return-object p0
.end method

.method public final getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->seedStatusMonitor$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    return-object p0
.end method

.method public final initExtraDataRuleSourceAsync()V
    .registers 5

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingCardDisabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSeedlingContainerCardDisabled()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasSeedOrGroupCard()Z

    move-result v0

    const-string v1, "SeedCardClient"

    if-nez v0, :cond_20

    const-string v0, "initExtraDataRuleSourceAsync, set has us card."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasSeedOrGroupCard(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasInit()Z

    move-result p0

    if-eqz p0, :cond_33

    return-void

    :cond_33
    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    if-eqz p0, :cond_83

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-static {p0}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasInit(Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initExtraDataRuleSourceAsync, callers: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "panta-sugg-SeedCardClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/android/common/util/q0;->c:Lcom/android/common/util/q0;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_83

    :cond_6a
    const-string v0, "initExtraDataRuleSourceAsync, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has NOT unlock."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->usDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public final onUserUnlock()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasSeedOrGroupCard()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initExtraDataRuleSourceAsync()V

    :cond_d
    return-void
.end method

.method public final release()V
    .registers 3

    const-string/jumbo v0, "panta-sugg-SeedCardClient"

    const-string/jumbo v1, "release."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->getHasInit()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getExtraDataRuleSource()Lcom/android/launcher3/card/seed/ExtraDataRuleSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->unregisterObserver$OplusLauncher_RealmePallExportAallRelease()V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasSeedOrGroupCard(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->getSeedStatusMonitor()Lcom/android/launcher3/card/seed/SeedStatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->setHasInit(Z)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    return-void
.end method

.method public final setup(Landroid/app/Application;)V
    .registers 2

    const-string p0, "app"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->context:Landroid/content/Context;

    return-void
.end method
