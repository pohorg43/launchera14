.class public final Lcom/android/common/util/LauncherBooster$CpuBoost;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherBooster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CpuBoost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherBooster.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherBooster.kt\ncom/android/common/util/LauncherBooster$CpuBoost\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,669:1\n1#2:670\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;

.field private static final DEFAULT_THREAD_EVENT_ID:I = -0x1

.field private static final keyUxThread:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final staticUxThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private boostMethod:Ljava/lang/reflect/Method;

.field private jankManager:Lcom/oplus/view/IJankManager;

.field private final mOsenseClient:Lcom/oplus/osense/OsenseResClient;

.field private needNotifyFirst:Z

.field private final uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

.field private updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

.field private uxImMethod:Ljava/lang/reflect/Method;

.field private uxThreadMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/LauncherBooster$CpuBoost;->Companion:Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Lh4/j;

    const/16 v1, 0x7e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lh4/j;

    const-string v3, "launcher.anim"

    invoke-direct {v2, v3, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x7e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string/jumbo v4, "onlineUXThread"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Li4/k0;->g([Lh4/j;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherBooster$CpuBoost;->staticUxThread:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "staticUxThread.keys"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "launcher-loader"

    const-string v3, "UiThreadHelper"

    const-string v4, "TaskViewTransactionHelper"

    const-string v5, "UrgentTransactionHelper"

    const-string v6, "WallpaperTransactionHelper"

    const-string v7, "RecentTasksList"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "elements"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v3}, Li4/j0;->b(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2, v1}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sput-object v2, Lcom/android/common/util/LauncherBooster$CpuBoost;->keyUxThread:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/common/util/LauncherBooster$CpuBoost;

    invoke-static {v0}, Lcom/oplus/osense/OsenseResClient;->get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    :try_start_14
    invoke-static {}, Lcom/oplus/view/JankManager;->getInstance()Lcom/oplus/view/JankManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_22
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_29

    goto :goto_30

    :cond_29
    const-string v0, "get jankmanager failure, e="

    const-string v1, "LauncherBooster"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_30
    return-void
.end method

.method public static synthetic a(ZLcom/android/common/util/LauncherBooster$CpuBoost;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenWindowAnimate$lambda$27(ZLcom/android/common/util/LauncherBooster$CpuBoost;)V

    return-void
.end method

.method public static final synthetic access$getKeyUxThread$cp()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/common/util/LauncherBooster$CpuBoost;->keyUxThread:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getStaticUxThread$cp()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/android/common/util/LauncherBooster$CpuBoost;->staticUxThread:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic access$reportKeyThread(Lcom/android/common/util/LauncherBooster$CpuBoost;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->reportKeyThread(Ljava/lang/String;)V

    return-void
.end method

.method private final getBoostMethod()Ljava/lang/reflect/Method;
    .registers 9

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->boostMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4c

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setTaskAnimation"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v0, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object v0, v5, v6

    const/4 v6, 0x5

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->boostMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_38
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_43

    check-cast v0, Lh4/z;

    iput-boolean v1, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    goto :goto_4c

    :cond_43
    const-string v0, "get method setTaskAnimation failure, e="

    const-string v1, "LauncherBooster"

    invoke-static {v0, v3, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->boostMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final getUpdateAppSceneAndActionMethod()Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3d

    :try_start_4
    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "updateAppSceneAndAction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_3d

    :cond_36
    const-string v1, "get method updateAppSceneAndAction failure, e="

    const-string v2, "LauncherBooster"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndActionMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final getUxImMethod()Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxImMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_38

    :try_start_4
    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setUxImFlag"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxImMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_25

    goto :goto_2a

    :catchall_25
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2a
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_38

    :cond_31
    const-string v1, "getMethod exception: "

    const-string v2, "LauncherBooster"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_38
    :goto_38
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxImMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final getUxThreadMethod()Ljava/lang/reflect/Method;
    .registers 6

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxThreadMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3d

    :try_start_4
    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setUxThreadValue"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxThreadMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2a

    goto :goto_2f

    :catchall_2a
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2f
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_3d

    :cond_36
    const-string v1, "getMethod exception: "

    const-string v2, "LauncherBooster"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uxThreadMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final isForceUpdateAppSceneAndAction(I)Z
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-ne p1, p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private final notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "LauncherBooster"

    const-string v4, ", uxValue="

    const-string v5, ", type="

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "notify uifirst, scene="

    const-string v6, ", pkg="

    invoke-static {v0, p1, v6, p2, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", pid="

    const-string v6, ", renderTid="

    invoke-static {p1, p3, v0, p4, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", flag="

    invoke-static {p1, p5, v4, p6, v0}, Landroidx/room/c0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", needNotify="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", uiFirstmanager null ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez v0, :cond_3b

    move v0, v1

    goto :goto_3c

    :cond_3b
    move v0, v2

    :goto_3c
    invoke-static {p1, v0, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3f
    const/4 p1, 0x5

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "LauncherBooster#notify(flag="

    invoke-static {v6, p7, v5, p3, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x8

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->needNotifyFirst:Z

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-nez v0, :cond_6c

    goto :goto_ad

    :cond_6c
    :try_start_6c
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getBoostMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_97

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v1

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, p2

    const/4 p2, 0x4

    aput-object p6, v6, p2

    aput-object p7, v6, p1

    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_96
    .catchall {:try_start_6c .. :try_end_96} :catchall_99

    goto :goto_9e

    :cond_97
    const/4 p0, 0x0

    goto :goto_9e

    :catchall_99
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_9e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a5

    goto :goto_aa

    :cond_a5
    const-string p1, "invoke setTaskAnimation failure, e="

    invoke-static {p1, p0, v3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_aa
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_ad
    :goto_ad
    return-void
.end method

.method private static final notifyWhenWindowAnimate$lambda$27(ZLcom/android/common/util/LauncherBooster$CpuBoost;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7db

    if-eqz p0, :cond_e

    invoke-virtual {p1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    goto :goto_11

    :cond_e
    invoke-virtual {p1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    :goto_11
    return-void
.end method

.method private final reportKeyThread(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/android/common/util/LauncherBooster;->access$isSupportUaf$p()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "reportKeyThread: threadName = "

    const-string v1, ", tid = "

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventId = -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_24
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v2, -0x1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/oplus/osense/OsenseResClient;->reportKeyThread(Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_33
    .catch Ljava/lang/NoSuchMethodError; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_4a

    :catch_34
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportKeyThread e "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public static final reportKeyThreadToUAF(Landroid/os/HandlerThread;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/LauncherBooster$CpuBoost;->Companion:Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/LauncherBooster$CpuBoost$Companion;->reportKeyThreadToUAF(Landroid/os/HandlerThread;)V

    return-void
.end method

.method public static synthetic setUx$default(Lcom/android/common/util/LauncherBooster$CpuBoost;ZIILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method


# virtual methods
.method public final enterSchedAssistScene()V
    .registers 3

    const-string v0, "LauncherBooster"

    const-string v1, "enterSchedAssistScene"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz p0, :cond_13

    const-string v1, "129"

    invoke-interface {p0, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setSchedAssistScene(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    goto :goto_1a

    :cond_13
    const/4 p0, 0x0

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_26

    :cond_21
    const-string p0, "invoke enterSchedAssistScene failure"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final enterScrollScene()V
    .registers 3

    const-string v0, "LauncherBooster"

    const-string v1, "enterScrollScene"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz p0, :cond_13

    const-string v1, "144"

    invoke-interface {p0, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setSchedAssistScene(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    goto :goto_1a

    :cond_13
    const/4 p0, 0x0

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_26

    :cond_21
    const-string p0, "invoke enterScrollScene failure"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final exitScrollScene()V
    .registers 3

    const-string v0, "LauncherBooster"

    const-string v1, "exitScrollScene"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz p0, :cond_13

    const-string v1, "16"

    invoke-interface {p0, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setSchedAssistScene(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    goto :goto_1a

    :cond_13
    const/4 p0, 0x0

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_26

    :cond_21
    const-string p0, "invoke exitScrollScene failure"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final exitSetSchedAssistScene()V
    .registers 3

    const-string v0, "LauncherBooster"

    const-string v1, "exitSetSchedAssistScene"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    if-eqz p0, :cond_13

    const-string v1, "1"

    invoke-interface {p0, v1}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setSchedAssistScene(Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    goto :goto_1a

    :cond_13
    const/4 p0, 0x0

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1a
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_21

    goto :goto_26

    :cond_21
    const-string p0, "invoke exitSetSchedAssistScene failure"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final gfxSceneBegin(Landroid/content/Context;ILjava/lang/String;)V
    .registers 15

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "describe"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    new-instance p0, Lcom/oplus/view/IJankManager$SceneInfo;

    invoke-direct {p0}, Lcom/oplus/view/IJankManager$SceneInfo;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/oplus/view/IJankManager$SceneInfo;->initBasicInfo(Landroid/content/Context;IILjava/lang/String;)V

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    const-wide/16 v9, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/oplus/view/IJankManager$SceneInfo;->updateThreshold(JJIJIJ)V

    invoke-static {}, Lcom/oplus/view/JankManager;->getInstance()Lcom/oplus/view/JankManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/oplus/view/JankManager;->gfxSceneBegin(Landroid/content/Context;Lcom/oplus/view/IJankManager$SceneInfo;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_34
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3b

    goto :goto_42

    :cond_3b
    const-string p1, "gfxSceneBegin Error: "

    const-string p2, "LauncherBooster"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method public final gfxSceneEnd(Landroid/content/Context;I)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/oplus/view/JankManager;->getInstance()Lcom/oplus/view/JankManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/view/JankManager;->gfxSceneEnd(Landroid/content/Context;I)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    goto :goto_18

    :catchall_13
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_18
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_26

    :cond_1f
    const-string p1, "gfxSceneEnd Error: "

    const-string p2, "LauncherBooster"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public final launchBoost()J
    .registers 5

    const-string v0, "LauncherBooster"

    const-string v1, "launchBoost from launcher: type=OSENSE_ACTION_LAUNCH, timeout=720"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v0, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v1, ""

    const-string v2, "OSENSE_ACTION_LAUNCH"

    const/16 v3, 0x2d0

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final notifyWhenAnimate(ZLjava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "sceneName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eqz p1, :cond_f

    const-string v0, "2"

    goto :goto_11

    :cond_f
    const-string v0, "1"

    :goto_11
    move-object v7, v0

    if-eqz p1, :cond_17

    const-string p1, "4"

    goto :goto_19

    :cond_17
    const-string p1, "0"

    :goto_19
    move-object v8, p1

    const-string v3, "com.android.launcher"

    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyWhenWindowAnimate(ZLjava/lang/String;Z)V
    .registers 12

    if-eqz p3, :cond_a

    if-eqz p1, :cond_7

    const-string p1, "1"

    goto :goto_c

    :cond_7
    const-string p1, "2"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    move-object v7, p1

    const-string p1, "LAUNCH_APP"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    sget-object p1, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/common/util/q;

    invoke-direct {v0, p3, p0}, Lcom/android/common/util/q;-><init>(ZLcom/android/common/util/LauncherBooster$CpuBoost;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1f
    const/4 v3, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, -0x1

    const-string v2, "com.android.launcher"

    const-string v6, "-1"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final releaseCpuResources(I)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/LauncherBooster;->access$isSupportUaf$p()Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseSysResource eventId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceForTrackEnd(I)V

    :try_start_20
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    invoke-virtual {p0, p1}, Lcom/oplus/osense/OsenseResClient;->releaseSysResource(I)V
    :try_end_25
    .catch Ljava/lang/NoSuchMethodError; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_3c

    :catch_26
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseCpuResources e "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public final requestCpuResources(I)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/LauncherBooster;->access$isSupportUaf$p()Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestCpuResources eventId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceForTrackBegin(I)V

    :try_start_20
    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->mOsenseClient:Lcom/oplus/osense/OsenseResClient;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/oplus/osense/OsenseResClient;->requestSysResource(ILandroid/os/Bundle;)V
    :try_end_2a
    .catch Ljava/lang/NoSuchMethodError; {:try_start_20 .. :try_end_2a} :catch_2b

    goto :goto_41

    :catch_2b
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requestCpuResources e "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public final setAsyncUx(I)V
    .registers 3

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object p0

    if-eqz p0, :cond_18

    :try_start_6
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/uifirst/OplusUIFirstManager;->setBinderThreadUxFlag(II)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_f

    goto :goto_18

    :catchall_f
    move-exception p0

    const-string p1, "LauncherBooster"

    const-string/jumbo v0, "setBinderThreadUxFlag error!"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final setUx(ZI)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LauncherBooster#setUx("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUx: pid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", open = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "LauncherBooster"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    if-eqz p1, :cond_4d

    const-string p1, "132"

    goto :goto_4f

    :cond_4d
    const-string p1, "4"

    :goto_4f
    move-object v9, p1

    const/4 v6, 0x6

    const/4 v8, 0x0

    const-string/jumbo v4, "setUx"

    const-string v5, "com.android.launcher"

    const-string v10, "4"

    move-object v3, p0

    move v7, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notify(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final setUxImFlag()V
    .registers 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUxImFlag: pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flag = 8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherBooster"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_20
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getUxImMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_42

    goto :goto_47

    :cond_40
    const/4 p0, 0x0

    goto :goto_47

    :catchall_42
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_47
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4e

    goto :goto_53

    :cond_4e
    const-string v0, "invoke setUxImFlag failure, e="

    invoke-static {v0, p0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_53
    return-void
.end method

.method public final setUxThreadValue(I)V
    .registers 8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string/jumbo v1, "setUxThreadValue: pid = "

    const-string v2, ", tid = "

    const-string v3, "LauncherBooster"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "167772804"

    :try_start_10
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getUxThreadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->uiFirstmanager:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    aput-object v1, v4, p1

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_33

    goto :goto_38

    :cond_31
    const/4 p0, 0x0

    goto :goto_38

    :catchall_33
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_38
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3f

    goto :goto_44

    :cond_3f
    const-string p1, "invoke setUxThreadValue failure, e="

    invoke-static {p1, p0, v3}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public final updateAppSceneAndAction(IZ)V
    .registers 10

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->isForceUpdateAppSceneAndAction(I)Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppSceneAndAction: scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherBooster"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    if-nez v0, :cond_30

    return-void

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LauncherBooster#updateAppSceneAndAction("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_53
    invoke-direct {p0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->getUpdateAppSceneAndActionMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object p0, p0, Lcom/android/common/util/LauncherBooster$CpuBoost;->jankManager:Lcom/oplus/view/IJankManager;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "com.android.launcher"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_75
    .catchall {:try_start_53 .. :try_end_75} :catchall_78

    goto :goto_7d

    :cond_76
    const/4 p0, 0x0

    goto :goto_7d

    :catchall_78
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_7d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_84

    goto :goto_89

    :cond_84
    const-string p1, "invoke updateAppSceneAndAction failure, e="

    invoke-static {p1, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_89
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8c
    return-void
.end method
