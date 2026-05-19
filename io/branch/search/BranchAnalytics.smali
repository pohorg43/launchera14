.class public Lio/branch/search/BranchAnalytics;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/b;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lio/branch/search/p;
.implements Lio/branch/search/IBranchClosableObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/BranchAnalytics$d;
    }
.end annotation


# static fields
.field public static final t:Ljava/lang/Object;

.field public static u:Ljava/lang/String; = "BRANCH_ANALYTICS_NO_VAL"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final v:Ljava/lang/Object;

.field public static final w:Ljava/lang/Object;

.field public static final x:Ljava/lang/Object;


# instance fields
.field public final a:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONArray;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public final n:[Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public final o:Lio/branch/search/e0;

.field public p:I

.field public final q:Lio/branch/search/h;

.field public r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final s:Lio/branch/search/h0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->v:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->w:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/BranchAnalytics;->x:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 14
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lio/branch/search/BranchAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lio/branch/search/BranchAnalytics;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lio/branch/search/BranchAnalytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lio/branch/search/BranchAnalytics;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Lio/branch/search/BranchAnalytics;->i:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, Lio/branch/search/BranchAnalytics;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, p0, Lio/branch/search/BranchAnalytics;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v8, p0, Lio/branch/search/BranchAnalytics;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v9, p0, Lio/branch/search/BranchAnalytics;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    iput-object v10, p0, Lio/branch/search/BranchAnalytics;->n:[Ljava/util/concurrent/ConcurrentHashMap;

    iput v11, p0, Lio/branch/search/BranchAnalytics;->p:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    invoke-virtual {p1, p0}, Lio/branch/search/m;->a(Lio/branch/search/IBranchClosableObject;)V

    new-instance v0, Lio/branch/search/e0;

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/branch/search/e0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    new-instance v0, Lio/branch/search/q1;

    invoke-direct {v0, p1}, Lio/branch/search/q1;-><init>(Lio/branch/search/m;)V

    iput-object v0, p1, Lio/branch/search/m;->g:Lio/branch/search/q1;

    new-instance v0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    invoke-direct {v0, p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;-><init>(Lio/branch/search/m;)V

    invoke-virtual {p1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/branch/search/BranchConfiguration;->a(Lio/branch/search/p;)V

    new-instance v0, Lio/branch/search/h;

    invoke-direct {v0, p1}, Lio/branch/search/h;-><init>(Lio/branch/search/m;)V

    iput-object v0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->g()V

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/h0;->a(Landroid/content/Context;)Lio/branch/search/h0;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/BranchAnalytics;->s:Lio/branch/search/h0;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/BranchAnalytics;)Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lio/branch/search/BranchAnalytics;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Lio/branch/search/AnalyticsEntity;->impressionable()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/h;->a(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V

    :cond_13
    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;)V
    .registers 5
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getImpressionJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    sget-object v1, Lio/branch/search/BranchAnalytics;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_20

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_20
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_31

    :catchall_2e
    move-exception p0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    :goto_31
    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V
    .registers 4
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7
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

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getClickJson()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    const-string v1, "trackClick"

    const-string v2, "handler"

    invoke-static {v1, v0, v2, p2}, Lio/branch/search/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_43

    :try_start_19
    const-string p2, "isDynamic"

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-static {p3}, Lio/branch/search/Util;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_26} :catch_3d

    const-string p2, "id"

    :try_start_28
    const-string v1, "id"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/branch/search/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    const-string p2, "trackClick"

    const-string v1, "extras"

    invoke-static {p2, v0, v1, p3}, Lio/branch/search/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_3c} :catch_3d

    goto :goto_43

    :catch_3d
    move-exception p2

    const-string p3, "BranchAnalytics.trackClick"

    invoke-virtual {p0, p3, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6c

    sget-object p2, Lio/branch/search/BranchAnalytics;->v:Ljava/lang/Object;

    monitor-enter p2

    :try_start_50
    iget-object p3, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_5f

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    :cond_5f
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_6c

    :catchall_69
    move-exception p0

    monitor-exit p2
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_69

    throw p0

    :cond_6c
    :goto_6c
    return-void
.end method

.method public a(Lio/branch/search/BranchAutoSuggestion;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchAutoSuggestion;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "auto_suggestion_click"

    invoke-virtual {p0, p1, v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/branch/search/BranchConfiguration;)V
    .registers 9

    :try_start_0
    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object p1, p1, Lio/branch/search/m;->g:Lio/branch/search/q1;

    invoke-virtual {p1}, Lio/branch/search/q1;->e()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v0, v0, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v1, v1, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->s()I

    move-result v1

    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v2, v2, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v2}, Lio/branch/search/KBranchRemoteConfiguration;->r()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lio/branch/search/e0;->a(Ljava/lang/String;IJ)Lh4/j;

    move-result-object p1

    if-nez p1, :cond_3a

    return-void

    :cond_3a
    iget-object v0, p1, Lh4/j;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object p1, p1, Lh4/j;->b:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object p1, p1, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {p1}, Lio/branch/search/BranchConfiguration;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lio/branch/search/t5;->o:Lio/branch/search/t5;

    iget-object v5, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    invoke-static/range {v1 .. v6}, Lio/branch/search/f1;->a(Ljava/lang/String;Ljava/lang/String;Lio/branch/search/t1;Lio/branch/search/t5;Lio/branch/search/m;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_5d

    :catch_55
    move-exception p1

    const-string v0, "BranchAnalytics.onConfigurationSynced"

    const-string v1, "Failed uploading persisted analytics data"

    invoke-virtual {p0, v0, v1, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public a(Lio/branch/search/BranchQueryHint;)V
    .registers 3
    .param p1  # Lio/branch/search/BranchQueryHint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "hint_click"

    invoke-virtual {p0, p1, v0}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Z)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    invoke-virtual {p0, p1}, Lio/branch/search/e0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .registers 7
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, " "

    invoke-static {p2, v0, p3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
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

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_2b

    const-string p1, "timestamp"

    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p3, :cond_33

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1e} :catch_2b

    if-nez p1, :cond_33

    const-string p1, "extras"

    :try_start_22
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_33

    :catch_2b
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    :cond_33
    :goto_33
    const/4 p1, 0x0

    const-string p2, "failures"

    invoke-virtual {p0, p2, v0, p1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .registers 6
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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lkotlin/jvm/functions/Function0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {p0}, Lio/branch/search/KBranchRemoteConfiguration;->n()I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lio/branch/search/e0;->a(Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p3, :cond_11

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_11
    sget-object p3, Lio/branch/search/BranchAnalytics;->x:Ljava/lang/Object;

    monitor-enter p3

    :try_start_14
    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :cond_23
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3

    :goto_2c
    return-void

    :catchall_2d
    move-exception p0

    monitor-exit p3
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public a(Z)V
    .registers 3

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->h()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->b(Z)V

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {p0}, Lio/branch/search/h;->a()V

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEvent;)Z
    .registers 4
    .param p1  # Lio/branch/search/AnalyticsEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lio/branch/search/AnalyticsEvent;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEvent;->a()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public b()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lio/branch/search/f0;->a()Lio/branch/search/j0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/branch/search/j0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .registers 7

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->n:[Ljava/util/concurrent/ConcurrentHashMap;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    if-eqz p1, :cond_f

    iget-object v4, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v3, v4, :cond_f

    goto :goto_12

    :cond_f
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_15
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "timestamp"

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_12} :catch_62

    const-string v1, "branch_key"

    :try_start_14
    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v2, v2, Lio/branch/search/m;->j:Lio/branch/search/BranchConfiguration;

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_1f} :catch_62

    const-string v1, "analytics_window_id"

    :try_start_21
    sget-object v2, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_26} :catch_62

    const-string v1, "empty_sessions"

    :try_start_28
    iget v2, p0, Lio/branch/search/BranchAnalytics;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_31} :catch_62

    const-string v1, "prev_analytics_window_id"

    :try_start_33
    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    invoke-virtual {v2}, Lio/branch/search/e0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->n:[Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lio/branch/search/a;->a(Lorg/json/JSONObject;[Ljava/util/Map;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_clicks"

    invoke-static {v0, v2, v3}, Lio/branch/search/a;->a(Lorg/json/JSONObject;[Ljava/util/Map;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Lio/branch/search/h;->a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "_impressions"

    invoke-static {v0, v1, p0}, Lio/branch/search/a;->a(Lorg/json/JSONObject;[Ljava/util/Map;Ljava/lang/String;)V
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_61} :catch_62

    goto :goto_7d

    :catch_62
    move-exception p0

    const-string v1, "analytics payload loading failed: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "BranchAnalytics.getAnalyticsData"

    invoke-static {v0, v2, p0, v1}, Lio/branch/search/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_7d
    return-object v0
.end method

.method public close()V
    .registers 5

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v0, v0, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->c()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    invoke-static {v1, v0}, Lio/branch/search/q;->a(Lio/branch/search/m;Lorg/json/JSONObject;)V

    sget-object v1, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    const-string v2, "BRANCH_ANALYTICS_NO_VAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    :cond_27
    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    sget-object v2, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v3, v3, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v3}, Lio/branch/search/KBranchRemoteConfiguration;->n()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lio/branch/search/e0;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_3a
    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->i()V

    return-void
.end method

.method public final e()Z
    .registers 2

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public final g()V
    .registers 2

    new-instance v0, Lio/branch/search/BranchAnalytics$b;

    invoke-direct {v0, p0}, Lio/branch/search/BranchAnalytics$b;-><init>(Lio/branch/search/BranchAnalytics;)V

    invoke-static {v0}, Lio/branch/search/g5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()Z
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object v0, v0, Lio/branch/search/m;->i:Lio/branch/search/KBranchRemoteConfiguration;

    invoke-virtual {v0}, Lio/branch/search/KBranchRemoteConfiguration;->a()Lio/branch/search/internal/control/AllFeatures;

    move-result-object v0

    iget-object v0, v0, Lio/branch/search/internal/control/AllFeatures;->e:Lio/branch/search/internal/control/FeatureFlag;

    iget-object v1, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    invoke-virtual {v0, v1}, Lio/branch/search/internal/control/FeatureFlag;->a(Lio/branch/search/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v2

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    iget-object v3, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Lio/branch/search/a;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_44

    if-eqz v0, :cond_44

    move v0, v2

    goto :goto_45

    :cond_44
    move v0, v1

    :goto_45
    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->e()Z

    move-result v3

    if-eqz v3, :cond_53

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->f()Z

    move-result p0

    if-nez p0, :cond_54

    :cond_53
    move v1, v2

    :cond_54
    return v1
.end method

.method public final i()V
    .registers 2

    new-instance v0, Lio/branch/search/BranchAnalytics$c;

    invoke-direct {v0, p0}, Lio/branch/search/BranchAnalytics$c;-><init>(Lio/branch/search/BranchAnalytics;)V

    invoke-static {v0}, Lio/branch/search/g5;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j()Z
    .registers 2

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onMoveToBackground()V
    .registers 8
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "Moving to background"

    invoke-static {v0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->h()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->q:Lio/branch/search/h;

    invoke-virtual {v0}, Lio/branch/search/h;->b()V

    sget-object v0, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->c()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lio/branch/search/BranchAnalytics$a;

    invoke-direct {v3, p0, v0}, Lio/branch/search/BranchAnalytics$a;-><init>(Lio/branch/search/BranchAnalytics;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    new-instance v4, Lio/branch/search/e5;

    sget-object v5, Lio/branch/search/t5;->D:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lio/branch/search/e5;-><init>(J)V

    iget-object v5, p0, Lio/branch/search/BranchAnalytics;->s:Lio/branch/search/h0;

    invoke-static {v2, v3, v0, v4, v5}, Lio/branch/search/q;->a(Lorg/json/JSONObject;Lio/branch/search/BranchAnalytics$d;Lio/branch/search/m;Lio/branch/search/e5;Lio/branch/search/h0;)V

    iget-object v0, p0, Lio/branch/search/BranchAnalytics;->o:Lio/branch/search/e0;

    sget-object v2, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lio/branch/search/e0;->b(Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {p0}, Lio/branch/search/BranchAnalytics;->j()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    iget v0, p0, Lio/branch/search/BranchAnalytics;->p:I

    add-int/2addr v0, v1

    goto :goto_49

    :cond_48
    move v0, v2

    :goto_49
    iput v0, p0, Lio/branch/search/BranchAnalytics;->p:I

    invoke-virtual {p0, v2}, Lio/branch/search/BranchAnalytics;->a(Z)V

    goto :goto_52

    :cond_4f
    invoke-virtual {p0, v1}, Lio/branch/search/BranchAnalytics;->a(Z)V

    :goto_52
    iget-object p0, p0, Lio/branch/search/BranchAnalytics;->a:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/m;->g:Lio/branch/search/q1;

    invoke-virtual {p0}, Lio/branch/search/q1;->h()V

    const-string p0, "BRANCH_ANALYTICS_NO_VAL"

    sput-object p0, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    return-void
.end method

.method public onMoveToForeground()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string p0, "Returning to foreground"

    invoke-static {p0}, Lio/branch/search/a;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/branch/search/BranchAnalytics;->u:Ljava/lang/String;

    return-void
.end method
