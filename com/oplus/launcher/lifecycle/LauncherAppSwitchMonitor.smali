.class public final Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherAppSwitchMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherAppSwitchMonitor.kt\ncom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,156:1\n1855#2:157\n1855#2,2:158\n1856#2:160\n1855#2,2:161\n1855#2,2:163\n1855#2,2:165\n1855#2,2:167\n1855#2,2:169\n1855#2,2:171\n*S KotlinDebug\n*F\n+ 1 LauncherAppSwitchMonitor.kt\ncom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor\n*L\n91#1:157\n93#1:158,2\n91#1:160\n101#1:161,2\n121#1:163,2\n127#1:165,2\n133#1:167,2\n139#1:169,2\n148#1:171,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherAppSwitchMoitor"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

.field private mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private final mLauncherWatchEvents$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->Companion:Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_e

    :cond_d
    move-object p1, v0

    :goto_e
    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_18

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    :cond_18
    iput-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    new-instance p1, Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-direct {p1}, Lcom/oplus/app/OplusAppSwitchConfig;-><init>()V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    new-instance p1, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;

    invoke-direct {p1, p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mLauncherWatchEvents$2;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncherWatchEvents$delegate:Lh4/f;

    new-instance p1, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;

    invoke-direct {p1, p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$mAppSwitchObserver$1;-><init>(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)V

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-void
.end method

.method public static final synthetic access$getMAppContext$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMAppSwitchConfig$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/oplus/app/OplusAppSwitchConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    return-object p0
.end method

.method public static final synthetic access$getMAppSwitchObserver$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-object p0
.end method

.method public static final synthetic access$getMLauncher$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherScope$p(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Landroidx/lifecycle/LifecycleCoroutineScope;
    .registers 1

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherWatchEvents(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getMLauncherWatchEvents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncherWatchEvents$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final registerObserver(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchConfig:Lcom/oplus/app/OplusAppSwitchConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    iget-object v2, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncherScope:Landroidx/lifecycle/LifecycleCoroutineScope;

    if-eqz v2, :cond_18

    sget-object v3, Lm7/y0;->b:Lm7/f0;

    new-instance v5, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor$registerObserver$1;-><init>(Ljava/util/List;Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_18
    return-void
.end method


# virtual methods
.method public final findWatchEventByClass(Ljava/lang/Class;)Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;"
        }
    .end annotation

    const-string v0, "classType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 6

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    invoke-virtual {v1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getConfigType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    invoke-virtual {v1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->getConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_43
    invoke-direct {p0, p1}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->registerObserver(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    iget-object v1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherCreate(Lcom/android/launcher/Launcher;)V

    goto :goto_4e

    :cond_60
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "LauncherAppSwitchMoitor"

    const-string v0, "onLauncherDestory(), unregister"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    iget-object v1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherDestroy(Lcom/android/launcher/Launcher;)V

    goto :goto_1a

    :cond_2c
    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {p1, v0, v1}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    invoke-virtual {p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherPause()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    invoke-virtual {p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherResume()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    invoke-virtual {p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherStart()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->getMLauncherWatchEvents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    invoke-virtual {p1}, Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;->onLauncherStop()V

    goto :goto_d

    :cond_1d
    return-void
.end method
