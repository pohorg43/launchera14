.class public final Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;Ljava/lang/String;Z)V
    .registers 4

    const-string p0, "launcherAppSwitchMonitor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "activityName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-virtual {p1, p0}, Lcom/oplus/launcher/lifecycle/LauncherAppSwitchMonitor;->findWatchEventByClass(Ljava/lang/Class;)Lcom/oplus/launcher/lifecycle/AbsLauncherWatchEvent;

    move-result-object p0

    if-eqz p0, :cond_1b

    instance-of p1, p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    if-eqz p1, :cond_1b

    check-cast p0, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;

    invoke-static {p0, p2, p3}, Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;->access$onNotOccludesOrHideTaskbarWindowStateChanged(Lcom/oplus/launcher/lifecycle/OccludesOrHideTaskbarActivityWatchEvent;Ljava/lang/String;Z)V

    :cond_1b
    return-void
.end method
