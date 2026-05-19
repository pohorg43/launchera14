.class public Lio/branch/search/q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/IBranchClosableObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/q1$d;,
        Lio/branch/search/q1$c;
    }
.end annotation


# static fields
.field public static final h:[I


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public b:Landroid/app/usage/NetworkStatsManager;

.field public final c:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/branch/search/q1$d;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field public g:Lio/branch/search/q1$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lio/branch/search/q1;->h:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x2
        0x0
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 4
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    iput-object p1, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-virtual {p1, p0}, Lio/branch/search/m;->a(Lio/branch/search/IBranchClosableObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/q1;->f:J

    invoke-virtual {p0}, Lio/branch/search/q1;->i()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/q1;)Lio/branch/search/q1$c;
    .registers 1

    iget-object p0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    return-object p0
.end method

.method public static synthetic a(Lio/branch/search/q1;Landroid/net/Network;Z)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/branch/search/q1;->a(Landroid/net/Network;Z)V

    return-void
.end method

.method public static synthetic b(Lio/branch/search/q1;)Landroid/net/ConnectivityManager;
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lio/branch/search/q1;)V
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/q1;->g()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Network;)Lh4/j;
    .registers 3
    .param p1  # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            ")",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_56

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance p0, Lh4/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "wifi"

    invoke-direct {p0, v0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance p0, Lh4/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "cellular"

    invoke-direct {p0, v0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_30
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance p0, Lh4/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "ethernet"

    invoke-direct {p0, v0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_43
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_56

    new-instance p0, Lh4/j;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "bluetooth"

    invoke-direct {p0, v0, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_56
    new-instance p0, Lh4/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lio/branch/search/q1$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/q1$d;

    invoke-static {v3}, Lio/branch/search/q1$d;->c(Lio/branch/search/q1$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_34

    if-eqz v3, :cond_10

    move-object v1, v2

    goto :goto_10

    :cond_2e
    iget-object p0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_34
    move-exception p1

    iget-object p0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public a()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_17

    return-object v1

    :cond_17
    sget-object v0, Lio/branch/search/q1;->h:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_2f

    aget v4, v0, v3

    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_2f
    return-object v1
.end method

.method public final a(J)V
    .registers 5

    iget-object v0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/q1$d;

    invoke-virtual {v1, p1, p2}, Lio/branch/search/q1$d;->b(J)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_25

    goto :goto_f

    :cond_1f
    iget-object p0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_25
    move-exception p1

    iget-object p0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final declared-synchronized a(Landroid/net/Network;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_84

    :try_start_6
    iget-object v0, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/q1$d;

    if-nez v0, :cond_67

    if-eqz p2, :cond_67

    invoke-virtual {p0, p1}, Lio/branch/search/q1;->a(Landroid/net/Network;)Lh4/j;

    move-result-object v1

    iget-object v2, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    iget-object v0, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/branch/search/q1;->a(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/q1$d;

    iget-object v2, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_50

    :cond_43
    new-instance v0, Lio/branch/search/q1$d;

    iget-object v2, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {v0, p0, v2, v1}, Lio/branch/search/q1$d;-><init>(Lio/branch/search/q1;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_50
    iget-object v1, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_5e
    iget-object p1, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    const-string v1, "ConnectivityMonitor.setNetworkAvailable"

    const-string v2, "getNetworkTypeAndTransport failed even though network is available"

    invoke-virtual {p1, v1, v2}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    :goto_67
    if-eqz v0, :cond_6d

    invoke-virtual {v0, p2}, Lio/branch/search/q1$d;->a(Z)V

    goto :goto_76

    :cond_6d
    iget-object p1, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    const-string p2, "ConnectivityMonitor.setNetworkAvailable"

    const-string v0, "Could not retrieve network availability."

    invoke-virtual {p1, p2, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_6 .. :try_end_76} :catchall_7d

    :goto_76
    :try_start_76
    iget-object p1, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_84

    monitor-exit p0

    return-void

    :catchall_7d
    move-exception p1

    :try_start_7e
    iget-object p2, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroid/app/usage/NetworkStats$Bucket;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/app/usage/NetworkStats$Bucket;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ConnectivityMonitor.addNetworkStatsToDiagnostics"

    if-nez p2, :cond_1b

    iget-object p0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring null Bucket for network type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    const-string v1, "rxb"

    :try_start_1d
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_24} :catch_43

    const-string v1, "txb"

    :try_start_26
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2d} :catch_43

    const-string v1, "rxp"

    :try_start_2f
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_36} :catch_43

    const-string v1, "txp"

    :try_start_38
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p1

    iget-object p0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-virtual {p0, v0, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_49
    return-void
.end method

.method public final a(Lorg/json/JSONObject;J)V
    .registers 18
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v1, p0

    iget-object v0, v1, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_6
    iget-object v0, v1, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lio/branch/search/q1$d;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_73

    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_4c
    .catchall {:try_start_1d .. :try_end_22} :catchall_73

    const-string v4, "uptime"

    move-wide/from16 v12, p2

    :try_start_26
    invoke-virtual {v3, v12, v13}, Lio/branch/search/q1$d;->a(J)J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/branch/search/q1;->c()Landroid/app/usage/NetworkStatsManager;

    move-result-object v5

    invoke-static {v3}, Lio/branch/search/q1$d;->b(Lio/branch/search/q1$d;)I

    move-result v6

    const/4 v7, 0x0

    iget-wide v8, v1, Lio/branch/search/q1;->f:J

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, Landroid/app/usage/NetworkStatsManager;->querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v4

    invoke-static {v3}, Lio/branch/search/q1$d;->c(Lio/branch/search/q1$d;)Ljava/lang/String;

    move-result-object v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_49
    .catchall {:try_start_26 .. :try_end_42} :catchall_73

    move-object v6, p1

    :try_start_43
    invoke-virtual {p0, v5, v4, v0, p1}, Lio/branch/search/q1;->a(Ljava/lang/String;Landroid/app/usage/NetworkStats$Bucket;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_73

    goto :goto_10

    :catch_47
    move-exception v0

    goto :goto_50

    :catch_49
    move-exception v0

    move-object v6, p1

    goto :goto_50

    :catch_4c
    move-exception v0

    move-object v6, p1

    move-wide/from16 v12, p2

    :goto_50
    :try_start_50
    iget-object v4, v1, Lio/branch/search/q1;->c:Lio/branch/search/m;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_73

    const-string v5, "ConnectivityMonitor.addUsageStatistics"

    :try_start_54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getting network stats summary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/branch/search/q1$d;->c(Lio/branch/search/q1$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_54 .. :try_end_6c} :catchall_73

    goto :goto_10

    :cond_6d
    iget-object v0, v1, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_73
    move-exception v0

    iget-object v1, v1, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;Lio/branch/search/e5;)V
    .registers 8
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_5} :catch_21
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    :try_start_5
    const-string v2, "interval"
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1f

    :try_start_7
    iget-wide v3, p0, Lio/branch/search/q1;->f:J

    sub-long v3, v0, v3

    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v2, v0, v1}, Lio/branch/search/q1;->a(Lorg/json/JSONObject;J)V

    invoke-virtual {p0, v2, p2}, Lio/branch/search/q1;->b(Lorg/json/JSONObject;Lio/branch/search/e5;)V

    const-string p2, "networks"

    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_21
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception p1

    goto :goto_2b

    :catch_21
    move-exception p1

    :try_start_22
    iget-object p2, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    const-string v0, "ConnectivityMonitor.addDiagnostics"

    invoke-virtual {p2, v0, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    :goto_29
    monitor-exit p0

    return-void

    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/net/ConnectivityManager;
    .registers 3

    iget-object v0, p0, Lio/branch/search/q1;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lio/branch/search/q1;->a:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;Lio/branch/search/e5;)V
    .registers 11
    .param p1  # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_5
    iget-object v1, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/KBranchRemoteConfiguration;->p()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/KNetworkUsageCappingRule;

    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lio/branch/search/o;->a(Lio/branch/search/KNetworkUsageCappingRule;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    iget-object v4, v4, Lio/branch/search/m;->f:Lio/branch/search/r3;

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_4e

    const-string v6, "remainingBytes"

    :try_start_34
    new-instance v7, Lio/branch/search/q1$b;

    invoke-direct {v7, p0, v2, p2}, Lio/branch/search/q1$b;-><init>(Lio/branch/search/q1;Lio/branch/search/KNetworkUsageCappingRule;Lio/branch/search/e5;)V

    invoke-virtual {v4, v5, v6, v7}, Lio/branch/search/s3;->a(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const-string v4, "bytes_remaining"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_13

    :cond_48
    const-string p2, "network_capping_rules"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    move-exception p1

    iget-object p0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    const-string p2, "ConnectivityMonitor.addNetworkCappingRules"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_56
    return-void
.end method

.method public final c()Landroid/app/usage/NetworkStatsManager;
    .registers 3

    iget-object v0, p0, Lio/branch/search/q1;->b:Landroid/app/usage/NetworkStatsManager;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lio/branch/search/q1;->b:Landroid/app/usage/NetworkStatsManager;

    return-object v0
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Lio/branch/search/q1;->j()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_d

    const-string p0, ""

    return-object p0

    :cond_d
    invoke-virtual {p0, v0}, Lio/branch/search/q1;->a(Landroid/net/Network;)Lh4/j;

    move-result-object v0

    iget-object v0, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lio/branch/search/q1;->f()Z

    move-result p0

    if-eqz p0, :cond_21

    const-string p0, ":metered"

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_21
    return-object v0
.end method

.method public e()Z
    .registers 3

    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-object p0, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Landroid/net/Network;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/q1$d;

    if-eqz p0, :cond_25

    invoke-static {p0}, Lio/branch/search/q1$d;->a(Lio/branch/search/q1$d;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public f()Z
    .registers 3

    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_13

    return v1

    :cond_13
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lio/branch/search/q1;->j()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final g()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/z1;->b()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {v0}, Lio/branch/search/z1;->a(Landroid/content/Context;)Lio/branch/search/z1;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/z1;->d()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    iget-object v1, v0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v0

    if-nez v0, :cond_38

    :try_start_2a
    iget-object v0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-static {v0}, Lio/branch/search/internal/rawsqlite/BundleUpdateService;->a(Lio/branch/search/m;)V
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception v0

    iget-object p0, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    const-string v1, "maybeForceBundleDownload"

    invoke-virtual {p0, v1, v0}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public h()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/branch/search/q1;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/branch/search/q1;->a(J)V

    return-void
.end method

.method public i()V
    .registers 6

    iget-object v0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    sget-object v1, Lio/branch/search/q1;->h:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_18

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    new-instance v0, Lio/branch/search/q1$c;

    iget-object v1, p0, Lio/branch/search/q1;->c:Lio/branch/search/m;

    invoke-direct {v0, p0, v1}, Lio/branch/search/q1$c;-><init>(Lio/branch/search/q1;Lio/branch/search/m;)V

    iput-object v0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_33

    new-instance v0, Lio/branch/search/q1$a;

    invoke-direct {v0, p0}, Lio/branch/search/q1$a;-><init>(Lio/branch/search/q1;)V

    const-wide/16 v1, 0x3e8

    const/4 p0, 0x1

    invoke-static {p0, v1, v2, v0}, Lio/branch/search/z4;->a(IJLkotlin/jvm/functions/Function0;)Lm7/s1;

    goto :goto_3c

    :cond_33
    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object p0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_3c
    return-void
.end method

.method public j()V
    .registers 3

    iget-object v0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lio/branch/search/q1;->b()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/branch/search/q1;->g:Lio/branch/search/q1$c;

    iget-object v0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_16
    iget-object v0, p0, Lio/branch/search/q1;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_21

    iget-object p0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_21
    move-exception v0

    iget-object p0, p0, Lio/branch/search/q1;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
