.class public Lcom/android/common/util/LauncherAnimationLevelUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CPU_PRESSURE_HIGH:I = 0x5f

.field public static final TAG:Ljava/lang/String; = "LauncherAnimationLevelUtils"

.field private static final THERMAL_PRESSURE_HIGH:I = 0x2d

.field private static mInstance:Lcom/android/common/util/LauncherAnimationLevelUtils;


# instance fields
.field private final mEventType:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPressure:Z

.field private final mOREClient:Lcom/oplus/osense/OsenseResEventClient;

.field private final mOsenseEventCallback:Lcom/oplus/osense/eventinfo/OsenseEventCallback;

.field private mPressure:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/osense/OsenseResEventClient;->getInstance()Lcom/oplus/osense/OsenseResEventClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOREClient:Lcom/oplus/osense/OsenseResEventClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mPressure:Z

    iput-boolean v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mLastPressure:Z

    new-instance v0, Lcom/android/common/util/LauncherAnimationLevelUtils$1;

    invoke-direct {v0, p0}, Lcom/android/common/util/LauncherAnimationLevelUtils$1;-><init>(Lcom/android/common/util/LauncherAnimationLevelUtils;)V

    iput-object v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mEventType:Ljava/util/HashSet;

    new-instance v0, Lcom/android/common/util/LauncherAnimationLevelUtils$2;

    invoke-direct {v0, p0}, Lcom/android/common/util/LauncherAnimationLevelUtils$2;-><init>(Lcom/android/common/util/LauncherAnimationLevelUtils;)V

    iput-object v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOsenseEventCallback:Lcom/oplus/osense/eventinfo/OsenseEventCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/common/util/LauncherAnimationLevelUtils;Lcom/oplus/osense/eventinfo/OsenseEventResult;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/util/LauncherAnimationLevelUtils;->onEventSceneChangedInner(Lcom/oplus/osense/eventinfo/OsenseEventResult;)V

    return-void
.end method

.method public static getInstance()Lcom/android/common/util/LauncherAnimationLevelUtils;
    .registers 1

    sget-object v0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mInstance:Lcom/android/common/util/LauncherAnimationLevelUtils;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/common/util/LauncherAnimationLevelUtils;

    invoke-direct {v0}, Lcom/android/common/util/LauncherAnimationLevelUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mInstance:Lcom/android/common/util/LauncherAnimationLevelUtils;

    :cond_b
    sget-object v0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mInstance:Lcom/android/common/util/LauncherAnimationLevelUtils;

    return-object v0
.end method

.method private onEventSceneChangedInner(Lcom/oplus/osense/eventinfo/OsenseEventResult;)V
    .registers 7

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lcom/oplus/osense/eventinfo/OsenseEventResult;->getEventType()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/osense/eventinfo/OsenseEventResult;->getEventStateType()I

    move-result v1

    invoke-virtual {p1}, Lcom/oplus/osense/eventinfo/OsenseEventResult;->getExtraData()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", eventStateType: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LauncherAnimationLevelUtils"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x67

    const/4 v3, 0x0

    if-eq v0, p1, :cond_46

    const/16 p1, 0x6c

    if-eq v0, p1, :cond_38

    move p1, v3

    move v0, p1

    goto :goto_52

    :cond_38
    const-string p1, "currenttemperature"

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, " thermal "

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, p1

    move p1, v3

    goto :goto_52

    :cond_46
    const-string p1, "cpuLoad"

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "cpuLoad = "

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v3

    :goto_52
    const/16 v1, 0x5f

    if-ge p1, v1, :cond_5a

    const/16 p1, 0x2d

    if-lt v0, p1, :cond_5b

    :cond_5a
    const/4 v3, 0x1

    :cond_5b
    iput-boolean v3, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mPressure:Z

    :cond_5d
    return-void
.end method

.method private registerEventCallback(Lcom/oplus/osense/eventinfo/OsenseEventCallback;Lcom/oplus/osense/eventinfo/EventConfig;)V
    .registers 4

    if-nez p2, :cond_9

    new-instance p2, Lcom/oplus/osense/eventinfo/EventConfig;

    iget-object p1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mEventType:Ljava/util/HashSet;

    invoke-direct {p2, p1}, Lcom/oplus/osense/eventinfo/EventConfig;-><init>(Ljava/util/HashSet;)V

    :cond_9
    iget-object p1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOREClient:Lcom/oplus/osense/OsenseResEventClient;

    iget-object p0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOsenseEventCallback:Lcom/oplus/osense/eventinfo/OsenseEventCallback;

    invoke-virtual {p1, p0, p2}, Lcom/oplus/osense/OsenseResEventClient;->registerEventCallback(Lcom/oplus/osense/eventinfo/OsenseEventCallback;Lcom/oplus/osense/eventinfo/EventConfig;)I

    move-result p0

    const-string/jumbo p1, "resgisterEventCallback ret: "

    const-string v0, " eventConfig: "

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/osense/eventinfo/EventConfig;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mEventSet: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/osense/eventinfo/EventConfig;->getEventSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherAnimationLevelUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterEventCallback(Lcom/oplus/osense/eventinfo/OsenseEventCallback;)V
    .registers 3

    iget-object p1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOREClient:Lcom/oplus/osense/OsenseResEventClient;

    iget-object p0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOsenseEventCallback:Lcom/oplus/osense/eventinfo/OsenseEventCallback;

    invoke-virtual {p1, p0}, Lcom/oplus/osense/OsenseResEventClient;->unregisterEventCallback(Lcom/oplus/osense/eventinfo/OsenseEventCallback;)I

    move-result p0

    const-string/jumbo p1, "unregisterEventCallback ret: "

    const-string v0, "LauncherAnimationLevelUtils"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isPressure()Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mLastPressure:Z

    iget-boolean v1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mPressure:Z

    if-eq v0, v1, :cond_8

    iput-boolean v1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mLastPressure:Z

    :cond_8
    const-string v0, "cpu pressure : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mPressure:Z

    const-string v2, "LauncherAnimationLevelUtils"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mPressure:Z

    return p0
.end method

.method public register()V
    .registers 3

    iget-object v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOsenseEventCallback:Lcom/oplus/osense/eventinfo/OsenseEventCallback;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/util/LauncherAnimationLevelUtils;->registerEventCallback(Lcom/oplus/osense/eventinfo/OsenseEventCallback;Lcom/oplus/osense/eventinfo/EventConfig;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    iget-object v0, p0, Lcom/android/common/util/LauncherAnimationLevelUtils;->mOsenseEventCallback:Lcom/oplus/osense/eventinfo/OsenseEventCallback;

    invoke-direct {p0, v0}, Lcom/android/common/util/LauncherAnimationLevelUtils;->unregisterEventCallback(Lcom/oplus/osense/eventinfo/OsenseEventCallback;)V

    return-void
.end method
