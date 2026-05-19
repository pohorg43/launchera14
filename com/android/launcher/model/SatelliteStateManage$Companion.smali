.class public final Lcom/android/launcher/model/SatelliteStateManage$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/model/SatelliteStateManage;
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

    invoke-direct {p0}, Lcom/android/launcher/model/SatelliteStateManage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/android/launcher/model/SatelliteStateManage;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->access$getSInstance$cp()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object p0

    if-nez p0, :cond_1e

    const-class p0, Lcom/android/launcher/model/SatelliteStateManage;

    monitor-enter p0

    :try_start_9
    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->access$getSInstance$cp()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/launcher/model/SatelliteStateManage;->Companion:Lcom/android/launcher/model/SatelliteStateManage$Companion;

    new-instance v0, Lcom/android/launcher/model/SatelliteStateManage;

    invoke-direct {v0}, Lcom/android/launcher/model/SatelliteStateManage;-><init>()V

    invoke-static {v0}, Lcom/android/launcher/model/SatelliteStateManage;->access$setSInstance$cp(Lcom/android/launcher/model/SatelliteStateManage;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->access$getSInstance$cp()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method
