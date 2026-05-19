.class public final Landroidx/core/location/LocationManagerCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/LocationManagerCompat$Api24Impl;,
        Landroidx/core/location/LocationManagerCompat$Api19Impl;,
        Landroidx/core/location/LocationManagerCompat$Api28Impl;,
        Landroidx/core/location/LocationManagerCompat$Api30Impl;,
        Landroidx/core/location/LocationManagerCompat$Api31Impl;,
        Landroidx/core/location/LocationManagerCompat$InlineHandlerExecutor;,
        Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;,
        Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$GnssStatusTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;,
        Landroidx/core/location/LocationManagerCompat$LocationListenerKey;,
        Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;
    }
.end annotation


# static fields
.field private static final GET_CURRENT_LOCATION_TIMEOUT_MS:J = 0x7530L

.field private static final MAX_CURRENT_LOCATION_AGE_MS:J = 0x2710L

.field private static final PRE_N_LOOPER_TIMEOUT_S:J = 0x5L

.field private static sContextField:Ljava/lang/reflect/Field;

.field public static final sLocationListeners:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLocationListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerKey;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat;->lambda$getCurrentLocation$0(Landroidx/core/util/Consumer;Landroid/location/Location;)V

    return-void
.end method

.method public static getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V
    .registers 5
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/os/CancellationSignal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroidx/core/util/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationManager;",
            "Ljava/lang/String;",
            "Landroidx/core/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/core/util/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->getCurrentLocation(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;
    .registers 1
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssHardwareModelName(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGnssYearOfHardware(Landroid/location/LocationManager;)I
    .registers 1
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->getGnssYearOfHardware(Landroid/location/LocationManager;)I

    move-result p0

    return p0
.end method

.method public static hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z
    .registers 4
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_b

    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->hasProvider(Landroid/location/LocationManager;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    return v1

    :cond_17
    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_1c} :catch_21

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    return v1

    :catch_21
    return v0
.end method

.method public static isLocationEnabled(Landroid/location/LocationManager;)Z
    .registers 1
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$Api28Impl;->isLocationEnabled(Landroid/location/LocationManager;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getCurrentLocation$0(Landroidx/core/util/Consumer;Landroid/location/Location;)V
    .registers 2

    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$registerGnssStatusCallback$1(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result p0

    return p0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z
    .registers 3
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidx/core/location/GnssStatusCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    invoke-static {p2}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result p0

    return p0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z
    .registers 4
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/location/GnssStatusCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_FINE_LOCATION"
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat$Callback;)Z

    move-result p0

    return p0
.end method

.method public static registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V
    .registers 5
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLocationListeners"
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->getKey()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()V

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_23
    return-void
.end method

.method public static removeUpdates(Landroid/location/LocationManager;Landroidx/core/location/LocationListenerCompat;)V
    .registers 8
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    sget-object v0, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    if-nez v3, :cond_21

    goto :goto_c

    :cond_21
    invoke-virtual {v3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->getKey()Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    move-result-object v4

    iget-object v5, v4, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;->mListener:Landroidx/core/location/LocationListenerCompat;

    if-ne v5, p1, :cond_c

    if-nez v1, :cond_30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_30
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->unregister()V

    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_c

    :cond_3a
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    sget-object v3, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_57

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void

    :catchall_57
    move-exception p0

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)V
    .registers 13
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/location/LocationRequestCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_17

    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object p2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p4

    invoke-static {p0, p1, p2, p4, p3}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void

    :cond_17
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api19Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationListenerCompat;Landroid/os/Looper;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public static requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)V
    .registers 13
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/core/location/LocationRequestCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroidx/core/location/LocationListenerCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        anyOf = {
            "android.permission.ACCESS_COARSE_LOCATION",
            "android.permission.ACCESS_FINE_LOCATION"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_e

    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->toLocationRequest()Landroid/location/LocationRequest;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api31Impl;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void

    :cond_e
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/location/LocationManagerCompat$Api30Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Ljava/util/concurrent/Executor;Landroidx/core/location/LocationListenerCompat;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    new-instance v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    new-instance v1, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;

    invoke-direct {v1, p1, p4}, Landroidx/core/location/LocationManagerCompat$LocationListenerKey;-><init>(Ljava/lang/String;Landroidx/core/location/LocationListenerCompat;)V

    invoke-direct {v0, v1, p3}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;-><init>(Landroidx/core/location/LocationManagerCompat$LocationListenerKey;Ljava/util/concurrent/Executor;)V

    invoke-static {p0, p1, p2, v0}, Landroidx/core/location/LocationManagerCompat$Api19Impl;->tryRequestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;Landroidx/core/location/LocationRequestCompat;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)Z

    move-result p3

    if-eqz p3, :cond_26

    return-void

    :cond_26
    sget-object p3, Landroidx/core/location/LocationManagerCompat;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter p3

    :try_start_29
    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-static {p0, v0}, Landroidx/core/location/LocationManagerCompat;->registerLocationListenerTransport(Landroid/location/LocationManager;Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;)V

    monitor-exit p3

    return-void

    :catchall_40
    move-exception p0

    monitor-exit p3
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public static unregisterGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;)V
    .registers 3
    .param p0  # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Landroidx/core/location/GnssStatusCompat$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroidx/core/location/LocationManagerCompat$GnssLazyLoader;->sGnssStatusListeners:Landroidx/collection/SimpleArrayMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {p0, p1}, Landroidx/core/location/LocationManagerCompat$Api24Impl;->unregisterGnssStatusCallback(Landroid/location/LocationManager;Ljava/lang/Object;)V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method
