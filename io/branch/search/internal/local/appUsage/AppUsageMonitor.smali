.class public final Lio/branch/search/internal/local/appUsage/AppUsageMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lio/branch/search/IBranchClosableObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00062\u00020\u00012\u00020\u0002:\u0001\u0007J\u000f\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"
    }
    d2 = {
        "Lio/branch/search/internal/local/appUsage/AppUsageMonitor;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Lio/branch/search/IBranchClosableObject;",
        "Lh4/z;",
        "onMoveToForeground",
        "()V",
        "Companion",
        "a",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Lio/branch/search/m;

.field public final c:Lm7/j0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v0

    const-string v1, "branchSearch"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scope"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    iput-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c:Lm7/j0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lio/branch/search/b5$a;->a:Lio/branch/search/b5$a;

    invoke-static {v1, v2}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "BranchSharedPrefs.get(br…redPrefs.Files.analytics)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "app_usages_last_save_time"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p0}, Lio/branch/search/m;->a(Lio/branch/search/IBranchClosableObject;)V

    new-instance p1, Lc4/a;

    invoke-direct {p1, p0}, Lc4/a;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V

    invoke-static {p1}, Lio/branch/search/g5;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    new-instance v0, Lc4/b;

    invoke-direct {v0, p0}, Lc4/b;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;)V

    invoke-static {v0}, Lio/branch/search/g5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMoveToForeground()V
    .registers 19
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->g()Lio/branch/search/internal/interfaces/LocalInterface;

    move-result-object v2

    if-eqz v2, :cond_7a

    iget-object v0, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    const-string v3, "branchSearch.applicationContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->Companion:Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;

    invoke-virtual {v3, v0}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_7a

    :cond_2f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v0, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    new-instance v3, Lio/branch/search/n1;

    new-instance v8, Lio/branch/search/p1;

    iget-object v9, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    invoke-virtual {v9}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v9

    const-string v10, "usagestats"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type android.app.usage.UsageStatsManager"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Landroid/app/usage/UsageStatsManager;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v10, v11}, Lio/branch/search/p1;-><init>(Landroid/app/usage/UsageStatsManager;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v8, v0}, Lio/branch/search/n1;-><init>(Lio/branch/search/p1;Ljava/util/Set;)V

    iget-object v12, v1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->c:Lm7/j0;

    new-instance v15, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    const/4 v8, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/n1;JJLl4/d;)V

    const/4 v13, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_7a
    :goto_7a
    return-void
.end method
