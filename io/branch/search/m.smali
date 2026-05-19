.class public Lio/branch/search/m;
.super Lio/branch/search/BranchSearch;
.source ""

# interfaces
.implements Lio/branch/search/b;


# static fields
.field public static m:Lio/branch/search/m;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static n:Lio/branch/search/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/x<",
            "Lio/branch/search/z3;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lio/branch/search/f1;

.field public c:Lio/branch/search/e1;

.field public d:Lio/branch/search/c1;

.field public e:Lio/branch/search/internal/interfaces/LocalInterface;

.field public f:Lio/branch/search/r3;

.field public g:Lio/branch/search/q1;

.field public h:Lio/branch/search/BranchAnalytics;

.field public i:Lio/branch/search/KBranchRemoteConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public j:Lio/branch/search/BranchConfiguration;

.field public k:Lio/branch/search/e;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/IBranchClosableObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/x;

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/x;-><init>(Lm7/j0;)V

    sput-object v0, Lio/branch/search/m;->n:Lio/branch/search/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/branch/search/m;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;)V
    .registers 8
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/BranchConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/branch/search/BranchSearch;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/m;->l:Ljava/util/List;

    iget-object v0, p2, Lio/branch/search/BranchConfiguration;->B:Lio/branch/search/z3;

    if-eqz v0, :cond_6c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/m;->a:Landroid/content/Context;

    :try_start_14
    invoke-static {p1, p0}, Lio/branch/search/w;->a(Landroid/content/Context;Lio/branch/search/m;)V

    iput-object p2, p0, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    iput-object p3, p0, Lio/branch/search/m;->k:Lio/branch/search/e;

    invoke-virtual {p0, p2}, Lio/branch/search/m;->a(Lio/branch/search/IBranchClosableObject;)V

    new-instance p2, Lio/branch/search/BranchAnalytics;

    invoke-direct {p2, p0}, Lio/branch/search/BranchAnalytics;-><init>(Lio/branch/search/m;)V

    iput-object p2, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    new-instance p2, Lio/branch/search/r3;

    invoke-direct {p2, p1}, Lio/branch/search/r3;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/branch/search/m;->f:Lio/branch/search/r3;

    new-instance p1, Lio/branch/search/f1;

    invoke-direct {p1, p0}, Lio/branch/search/f1;-><init>(Lio/branch/search/m;)V

    iput-object p1, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    new-instance p1, Lio/branch/search/e1;

    invoke-direct {p1, p0}, Lio/branch/search/e1;-><init>(Lio/branch/search/m;)V

    iput-object p1, p0, Lio/branch/search/m;->c:Lio/branch/search/e1;

    new-instance p1, Lio/branch/search/internal/interfaces/LocalInterface;

    invoke-direct {p1, p0}, Lio/branch/search/internal/interfaces/LocalInterface;-><init>(Lio/branch/search/m;)V

    iput-object p1, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    new-instance p1, Lio/branch/search/d1;

    invoke-direct {p1, p0}, Lio/branch/search/d1;-><init>(Lio/branch/search/m;)V

    iput-object p1, p0, Lio/branch/search/m;->d:Lio/branch/search/c1;

    new-instance p1, Lio/branch/search/y;

    sget-object p2, Lio/branch/search/m;->n:Lio/branch/search/x;

    new-instance p3, Lio/branch/search/z$a;

    iget-object v1, p0, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    iget-object v2, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v3, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-direct {p3, v1, v2, v3}, Lio/branch/search/z$a;-><init>(Lio/branch/search/BranchConfiguration;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/BranchAnalytics;)V

    invoke-direct {p1, p2, v0, p3}, Lio/branch/search/y;-><init>(Lio/branch/search/x;Lio/branch/search/z3;Lio/branch/search/z;)V
    :try_end_5a
    .catchall {:try_start_14 .. :try_end_5a} :catchall_5b

    return-void

    :catchall_5b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    iget-object p2, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz p2, :cond_68

    const-string p3, "BranchSearchInternal initialization failed. De initializing Branch."

    invoke-virtual {p2, p3, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_68
    invoke-virtual {p0}, Lio/branch/search/m;->a()V

    throw p1

    :cond_6c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must use BranchConfiguration.trackingStatus(...) during init."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)Lio/branch/search/m;
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/BranchConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "VisibleForTests"
        }
    .end annotation

    sget-object v0, Lio/branch/search/m;->m:Lio/branch/search/m;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lio/branch/search/w0;->a()Lio/branch/search/w0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/branch/search/g0;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lio/branch/search/m;->a(Landroid/content/Context;)V

    :try_start_13
    new-instance v1, Lio/branch/search/m;

    new-instance v2, Lio/branch/search/e;

    invoke-direct {v2, p0, p1}, Lio/branch/search/e;-><init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;)V

    invoke-direct {v1, p0, p1, v2}, Lio/branch/search/m;-><init>(Landroid/content/Context;Lio/branch/search/BranchConfiguration;Lio/branch/search/e;)V

    sput-object v1, Lio/branch/search/m;->m:Lio/branch/search/m;

    iget-object p1, v1, Lio/branch/search/m;->k:Lio/branch/search/e;

    invoke-virtual {p1, p0}, Lio/branch/search/e;->a(Landroid/content/Context;)V

    sget-object p1, Lio/branch/search/m;->m:Lio/branch/search/m;

    iget-object p1, p1, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {p1, p0}, Lio/branch/search/BranchConfiguration;->a(Landroid/content/Context;)V

    sget-object p0, Lio/branch/search/m;->m:Lio/branch/search/m;

    invoke-virtual {p0}, Lio/branch/search/m;->j()V

    sget-object p0, Lio/branch/search/m;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_50

    sget-object p0, Lio/branch/search/m;->o:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/branch/search/AnalyticsEvent;

    sget-object v1, Lio/branch/search/m;->m:Lio/branch/search/m;

    invoke-virtual {v1, p1}, Lio/branch/search/m;->trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;

    goto :goto_3e

    :cond_50
    sget-object p0, Lio/branch/search/m;->m:Lio/branch/search/m;

    invoke-static {p0}, Lio/branch/search/i0;->a(Lio/branch/search/m;)V

    sget-object p0, Lio/branch/search/m;->m:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {v0, p0}, Lio/branch/search/w0;->a(Lio/branch/search/BranchAnalytics;)V
    :try_end_5c
    .catchall {:try_start_13 .. :try_end_5c} :catchall_5f

    sget-object p0, Lio/branch/search/m;->m:Lio/branch/search/m;

    return-object p0

    :catchall_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    sget-object p1, Lio/branch/search/m;->m:Lio/branch/search/m;

    if-eqz p1, :cond_78

    iget-object p1, p1, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    if-eqz p1, :cond_70

    const-string v0, "BranchSearchInternal initialization failed. De initializing Branch."

    invoke-virtual {p1, v0, p0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_70
    sget-object p1, Lio/branch/search/m;->m:Lio/branch/search/m;

    invoke-virtual {p1}, Lio/branch/search/m;->a()V

    const/4 p1, 0x0

    sput-object p1, Lio/branch/search/m;->m:Lio/branch/search/m;

    :cond_78
    new-instance p1, Lio/branch/search/i;

    invoke-direct {p1, p0}, Lio/branch/search/i;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLUpdaterService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_35
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleaned job with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchSearchInternal.clearJobs"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_67
    return-void
.end method

.method public static f()Lio/branch/search/m;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lio/branch/search/m;->m:Lio/branch/search/m;

    return-object v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Lio/branch/search/IBranchServiceEnabledEvents;)V
    .registers 2
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/IBranchServiceEnabledEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lio/branch/search/Util;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p0, p1}, Lio/branch/search/m;->isServiceEnabled(Ljava/lang/String;Lio/branch/search/IBranchServiceEnabledEvents;)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "isServiceEnabled(Context, IBranchServiceEnabledEvents) was called but no Branch key was found in the Manifest file. Please define one or simply use isServiceEnabled(String, IBranchServiceEnabledEvents) instead."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isServiceEnabled(Ljava/lang/String;Lio/branch/search/IBranchServiceEnabledEvents;)V
    .registers 5
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Lio/branch/search/IBranchServiceEnabledEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Lio/branch/search/BranchConfiguration;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/branch/search/m$a;

    invoke-direct {v0, p1}, Lio/branch/search/m$a;-><init>(Lio/branch/search/IBranchServiceEnabledEvents;)V

    sget-object p1, Lio/branch/search/t5;->q:Lio/branch/search/t5;

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lio/branch/search/f1;->a(Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V

    return-void
.end method

.method public static optInToTracking()V
    .registers 5

    sget-object v0, Lio/branch/search/m;->n:Lio/branch/search/x;

    new-instance v1, Lio/branch/search/z3;

    sget-object v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_IN:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    iget v2, v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->sqlValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lio/branch/search/z3;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lio/branch/search/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static optOutOfTracking()V
    .registers 5

    sget-object v0, Lio/branch/search/m;->n:Lio/branch/search/x;

    new-instance v1, Lio/branch/search/z3;

    sget-object v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->OPTED_OUT:Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    iget v2, v2, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;->sqlValue:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lio/branch/search/z3;-><init>(IJ)V

    invoke-virtual {v0, v1}, Lio/branch/search/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static trackEvent(Lio/branch/search/AnalyticsEvent;)Z
    .registers 3
    .param p0  # Lio/branch/search/AnalyticsEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/m;->m:Lio/branch/search/m;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Lio/branch/search/m;->trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0

    :cond_9
    sget-object v0, Lio/branch/search/m;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lio/branch/search/BranchSearch;->maxEventTrackingQueueSize:I

    if-ge v0, v1, :cond_18

    sget-object v0, Lio/branch/search/m;->o:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-virtual {p0}, Lio/branch/search/m;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/m;->d:Lio/branch/search/c1;

    iput-object v0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iput-object v0, p0, Lio/branch/search/m;->f:Lio/branch/search/r3;

    iput-object v0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    iput-object v0, p0, Lio/branch/search/m;->c:Lio/branch/search/e1;

    iput-object v0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    iput-object v0, p0, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    iput-object v0, p0, Lio/branch/search/m;->k:Lio/branch/search/e;

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V
    .registers 3
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lio/branch/search/IBranchClosableObject;)V
    .registers 2

    iget-object p0, p0, Lio/branch/search/m;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/m;->h()Lio/branch/search/f1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/f1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public addOnRawSQLUpdateCallback(Le4/a;)V
    .registers 2
    .param p1  # Le4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/BranchConfiguration;->a(Le4/a;)V

    return-void
.end method

.method public appStoreSearch(Lio/branch/search/BranchAppStoreRequest;Lf4/c;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchAppStoreRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lf4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->d:Lio/branch/search/c1;

    invoke-interface {p0, p1, p2}, Lio/branch/search/c1;->a(Lio/branch/search/BranchAppStoreRequest;Lf4/c;)V

    return-void
.end method

.method public autoSuggest(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchAutoSuggestRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchAutoSuggestEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1;->a(Lio/branch/search/BranchAutoSuggestRequest;Lio/branch/search/IBranchAutoSuggestEvents;)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/IBranchClosableObject;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lio/branch/search/IBranchClosableObject;->close()V

    goto :goto_a

    :cond_1c
    iget-object p0, p0, Lio/branch/search/m;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method public compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;)V
    .registers 4
    .param p1  # Lio/branch/search/BranchCompositeSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lf4/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->c:Lio/branch/search/e1;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lio/branch/search/e1;->a(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;)V
    .registers 4
    .param p1  # Lio/branch/search/BranchCompositeSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchExclusiveCompositeSearchEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->c:Lio/branch/search/e1;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lio/branch/search/e1;->a(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public compositeSearch(Lio/branch/search/BranchCompositeSearchRequest;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V
    .registers 4
    .param p1  # Lio/branch/search/BranchCompositeSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->c:Lio/branch/search/e1;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lio/branch/search/e1;->a(Lio/branch/search/BranchCompositeSearchRequest;Lf4/c;Lio/branch/search/IBranchExclusiveCompositeSearchEvents;Lio/branch/search/IBranchExclusiveCompositeSearchPlusAppStoreEvents;)V

    return-void
.end method

.method public d()Lio/branch/search/BranchConfiguration;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    return-object p0
.end method

.method public e()Lio/branch/search/e;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->k:Lio/branch/search/e;

    return-object p0
.end method

.method public g()Lio/branch/search/internal/interfaces/LocalInterface;
    .registers 1

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    return-object p0
.end method

.method public getTrackingStatus()Lio/branch/search/BranchConfiguration$BranchTrackingStatus;
    .registers 1

    iget-object p0, p0, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    iget-object p0, p0, Lio/branch/search/BranchConfiguration;->C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/BranchConfiguration$BranchTrackingStatus;

    return-object p0
.end method

.method public h()Lio/branch/search/f1;
    .registers 1

    iget-object p0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    return-object p0
.end method

.method public i()Lio/branch/search/KBranchRemoteConfiguration;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    return-object p0
.end method

.method public final j()V
    .registers 1

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->b:Lio/branch/search/k2;

    invoke-virtual {p0}, Lio/branch/search/k2;->d()V

    return-void
.end method

.method public localQueryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchQueryHintRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchLocalQueryHintEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-static {p0, p1, p2}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchLocalQueryHintEvents;)V

    return-void
.end method

.method public localSearch(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchLocalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchLocalSearchEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-static {p0, p1, p2}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/IBranchLocalSearchEvents;)V

    return-void
.end method

.method public localZeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchZeroStateEvents;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchZeroStateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchZeroStateEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-static {p0, p1, p2}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchZeroStateEvents;)V

    return-void
.end method

.method public notifyAppDataOverrideChanges()V
    .registers 2

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/branch/search/v3;->a(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public optOutOfTracking(Z)V
    .registers 3

    if-eqz p1, :cond_6

    invoke-static {}, Lio/branch/search/m;->optOutOfTracking()V

    goto :goto_10

    :cond_6
    invoke-static {}, Lio/branch/search/m;->optInToTracking()V

    const-string p1, "BranchSearchInternal.optOutOfTracking"

    const-string v0, "Use of deprecated method optOutOfTracking(boolean)"

    invoke-virtual {p0, p1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public query(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchSearchEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1;->a(Lio/branch/search/BranchSearchRequest;Lio/branch/search/IBranchSearchEvents;)Z

    move-result p0

    return p0
.end method

.method public queryHint(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchQueryHintRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchQueryHintEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1;->a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;)Z

    move-result p0

    return p0
.end method

.method public queryHint(Lio/branch/search/IBranchQueryHintEvents;)Z
    .registers 3
    .param p1  # Lio/branch/search/IBranchQueryHintEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    invoke-static {}, Lio/branch/search/BranchQueryHintRequest;->create()Lio/branch/search/BranchQueryHintRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/branch/search/f1;->a(Lio/branch/search/BranchQueryHintRequest;Lio/branch/search/IBranchQueryHintEvents;)Z

    move-result p0

    return p0
.end method

.method public remoteZeroState(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;)Z
    .registers 3
    .param p1  # Lio/branch/search/BranchZeroStateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/IBranchRemoteZeroStateEvents;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->b:Lio/branch/search/f1;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1;->a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;)Z

    move-result p0

    return p0
.end method

.method public setLocation(DD)V
    .registers 5

    iget-object p0, p0, Lio/branch/search/m;->k:Lio/branch/search/e;

    iput-wide p1, p0, Lio/branch/search/e;->k:D

    iput-wide p3, p0, Lio/branch/search/e;->l:D

    return-void
.end method

.method public trackAnalyticsEvent(Lio/branch/search/AnalyticsEvent;)Ljava/lang/Boolean;
    .registers 2
    .param p1  # Lio/branch/search/AnalyticsEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public trackClick(Lio/branch/search/BranchAutoSuggestion;)V
    .registers 2
    .param p1  # Lio/branch/search/BranchAutoSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchAutoSuggestion;)V

    return-void
.end method

.method public trackClick(Lio/branch/search/BranchQueryHint;)V
    .registers 2
    .param p1  # Lio/branch/search/BranchQueryHint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/BranchQueryHint;)V

    return-void
.end method

.method public trackImpressions(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V

    return-void
.end method

.method public trackImpressions(Landroid/view/View;Lio/branch/search/ui/BranchEntity;)V
    .registers 3

    invoke-virtual {p2, p1}, Lio/branch/search/ui/BranchEntity;->g(Landroid/view/View;)V

    return-void
.end method

.method public zeroState(Lio/branch/search/BranchZeroStateRequest;Lf4/e;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchZeroStateRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lf4/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/m;->c:Lio/branch/search/e1;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/e1;->a(Lio/branch/search/BranchZeroStateRequest;Lf4/e;)V

    return-void
.end method
