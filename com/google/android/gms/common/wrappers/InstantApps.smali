.class public Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zza:Landroid/content/Context;

.field private static zzb:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInstantApp(Landroid/content/Context;)Z
    .registers 5
    .param p0  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-class v0, Lcom/google/android/gms/common/wrappers/InstantApps;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;

    if-eqz v2, :cond_18

    sget-object v3, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    if-eqz v3, :cond_18

    if-eq v2, v1, :cond_12

    goto :goto_18

    :cond_12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_4c

    monitor-exit v0

    return p0

    :cond_18
    :goto_18
    const/4 v2, 0x0

    :try_start_19
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_4c

    goto :goto_42

    :cond_30
    :try_start_30
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;
    :try_end_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_3d} :catch_3e
    .catchall {:try_start_30 .. :try_end_3d} :catchall_4c

    goto :goto_42

    :catch_3e
    :try_start_3e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    :goto_42
    sput-object v1, Lcom/google/android/gms/common/wrappers/InstantApps;->zza:Landroid/content/Context;

    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzb:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4c

    monitor-exit v0

    return p0

    :catchall_4c
    move-exception p0

    monitor-exit v0

    throw p0
.end method
