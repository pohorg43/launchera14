.class public Lcom/android/launcher3/uioverrides/DeviceFlag;
.super Lcom/android/launcher3/config/FeatureFlags$DebugFlag;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# static fields
.field public static final NAMESPACE_LAUNCHER:Ljava/lang/String; = "launcher"


# instance fields
.field private final mDefaultValueInCode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    invoke-static {p1, p2}, Lcom/android/launcher3/uioverrides/DeviceFlag;->getDeviceValue(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/launcher3/uioverrides/DeviceFlag;->mDefaultValueInCode:Z

    return-void
.end method

.method public static getDeviceValue(Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "launcher"

    invoke-static {v2, p0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method


# virtual methods
.method public appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->appendProps(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDefaultValueInCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/DeviceFlag;->mDefaultValueInCode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public get()Z
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->get()Z

    move-result p0

    return p0
.end method
