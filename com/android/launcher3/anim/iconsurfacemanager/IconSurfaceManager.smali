.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;

.field private static final DISABLE_FLOATING_ICON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTERRUPT_CONTAINER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IconSurfaceManager"

.field private static final WINDOW_ANIM_CLOSING:I = -0x1

.field private static final WINDOW_ANIM_DEFAULT:I = 0x0

.field private static final WINDOW_ANIM_OPENING:I = 0x1


# instance fields
.field private final clickedViewId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private currentClickedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

.field private final currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isCurrentIconSurfaceHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastClickedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

.field private final lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final session:Landroid/view/SurfaceSession;

.field private final viewIdAnimMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->Companion:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, -0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->INTERRUPT_CONTAINER:Ljava/util/List;

    const-string v0, "com.coloros.childrenspace"

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->DISABLE_FLOATING_ICON:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->clickedViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isCurrentIconSurfaceHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->session:Landroid/view/SurfaceSession;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurfaceCallback$lambda$0(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic access$getDISABLE_FLOATING_ICON$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->DISABLE_FLOATING_ICON:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseLastIconSurfaceSafely$lambda$17(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurface$lambda$24(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V

    return-void
.end method

.method private final checkIfNeedTwoSurfaceWhenInterrupt(Landroid/view/View;IZZ)V
    .registers 7

    const/4 v0, -0x1

    const-string v1, "IconSurfaceManager"

    if-nez p3, :cond_35

    if-eq p2, v0, :cond_35

    const-string p3, "checkIfNeedTwoSurfaceWhenInterrupt need two surface now"

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p3}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p3

    if-eqz p3, :cond_24

    if-nez p4, :cond_24

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_4c

    :cond_24
    iget-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iget-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    iget-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseLastIconSurface(Landroid/view/View;)V

    goto :goto_4c

    :cond_35
    const-string p1, "checkIfNeedTwoSurfaceWhenInterrupt release last icon now"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_44

    :cond_43
    const/4 p1, 0x0

    :goto_44
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_4c
    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideAndReleaseIconSurface$lambda$31()V

    return-void
.end method

.method public static final disableFloatingIcon(Landroid/view/View;Z)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->Companion:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$Companion;->disableFloatingIcon(Landroid/view/View;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseLastIconSurface$lambda$30(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V

    return-void
.end method

.method public static synthetic endWindowAnim$default(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;ZZIILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->endWindowAnim(Landroid/view/View;ZZI)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurfaceSafely$lambda$19(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V

    return-void
.end method

.method private static final forceReleaseIconSurface$lambda$24(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurface(Z)V

    return-void
.end method

.method private static final forceReleaseIconSurfaceSafely$lambda$19(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurfaceSafelyImpl(Landroid/view/View;)V

    return-void
.end method

.method private final forceReleaseIconSurfaceSafelyImpl(Landroid/view/View;)V
    .registers 8

    const-string v0, "currentClickedView == null?: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_13

    :cond_12
    move-object v1, v2

    :goto_13
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_19

    move v1, v3

    goto :goto_1a

    :cond_19
    move v1, v4

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastClickedView == null?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    :cond_2d
    if-nez v2, :cond_31

    move v1, v3

    goto :goto_32

    :cond_31
    move v1, v4

    :goto_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7e
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_8d

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetIconToVisibleImp(Landroid/view/View;)V

    :cond_8d
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_94

    invoke-direct {p0, p1, v0, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideAndReleaseIconSurface(Landroid/view/View;Lcom/android/launcher3/anim/floatingdrawable/IconSurface;Z)V

    :cond_94
    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a6

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetIconToVisibleImp(Landroid/view/View;)V

    :cond_a6
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_ad

    invoke-direct {p0, p1, v0, v3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideAndReleaseIconSurface(Landroid/view/View;Lcom/android/launcher3/anim/floatingdrawable/IconSurface;Z)V

    :cond_ad
    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetLastSurfaceData()V

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private static final forceReleaseLastIconSurfaceSafely$lambda$17(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseLastIconSurfaceSafelyImpl(Landroid/view/View;)V

    return-void
.end method

.method private final forceReleaseLastIconSurfaceSafelyImpl(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetIconToVisibleImp(Landroid/view/View;)V

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseLastIconSurface(Landroid/view/View;)V

    return-void
.end method

.method private final getViewIdForAllAppsIcon(Landroid/view/View;)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result p0

    const/4 v0, -0x1

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_16

    :cond_15
    move-object p0, v1

    :goto_16
    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    :cond_1c
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    if-eqz p0, :cond_2b

    if-ne p0, v0, :cond_2a

    add-int/lit8 p0, p0, -0x1

    :cond_2a
    return p0

    :cond_2b
    return v0
.end method

.method private final hideAndReleaseIconSurface(Landroid/view/View;Lcom/android/launcher3/anim/floatingdrawable/IconSurface;Z)V
    .registers 6

    const-string p3, "hideAndReleaseIconSurface called, iconSurface: "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_f

    :cond_e
    move-object v1, v0

    :goto_f
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    :cond_2f
    sget-object p2, Lcom/android/launcher3/anim/iconsurfacemanager/c;->a:Lcom/android/launcher3/anim/iconsurfacemanager/c;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideOrRemoveIconSurfaceInNextFrame(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final hideAndReleaseIconSurface$lambda$31()V
    .registers 2

    const-string v0, "IconSurfaceManager"

    const-string v1, "hideAndReleaseIconSurface running"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final hideOrRemoveIconSurfaceInNextFrame(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
    .registers 6

    const-string p0, "IconSurfaceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOrRemoveIconSurfaceInNextFrame called, sc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6f

    new-instance p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz v0, :cond_24

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getParentFolderIcon()Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6d

    monitor-enter p2

    :try_start_2a
    new-instance p1, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p1}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setRemove()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    if-eqz p3, :cond_41

    invoke-virtual {p0, p3}, Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;->addOnSafeToReleaseCallback(Ljava/lang/Runnable;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_43

    goto :goto_48

    :cond_41
    const/4 p0, 0x0

    goto :goto_48

    :catchall_43
    move-exception p0

    :try_start_44
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_48
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_68

    const-string p1, "IconSurfaceManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hideIconSurfaceInNextFrame error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_44 .. :try_end_68} :catchall_6a

    :cond_68
    monitor-exit p2

    goto :goto_6f

    :catchall_6a
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_6d
    sget-object p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;

    :cond_6f
    :goto_6f
    return-void
.end method

.method private final isInInterruptAnim(Landroid/view/View;)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    const-string/jumbo v0, "viewid is: "

    const-string v1, ", isInInterruptAnim: "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v3

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->clickedViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->clickedViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v3

    :goto_60
    return v2
.end method

.method private final releaseIconSurface(Landroid/view/SurfaceControl;)V
    .registers 4

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4f

    :cond_9
    const-string p0, "IconSurfaceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseIconSurface called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_2f
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_4c

    monitor-exit p1

    return-void

    :catchall_4c
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method

.method private final releaseIconSurface(Landroid/view/View;ZI)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->tryReleaseLastIconSurface(Landroid/view/View;ZI)Z

    move-result v0

    const-string/jumbo v1, "releaseIconSurface called, isopen: "

    const-string v2, ", id is: "

    invoke-static {v1, p2, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tryReleaseIconSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconSurfaceManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    if-eqz p2, :cond_39

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    :cond_32
    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    goto :goto_48

    :cond_39
    iget-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    :cond_41
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurfaceCallback(Landroid/view/View;I)Ljava/lang/Runnable;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideOrRemoveIconSurfaceInNextFrame(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    :cond_48
    :goto_48
    return-void
.end method

.method private final releaseIconSurfaceCallback(Landroid/view/View;I)Ljava/lang/Runnable;
    .registers 4

    new-instance v0, Lcom/android/launcher/badge/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;I)V

    return-object v0
.end method

.method private static final releaseIconSurfaceCallback$lambda$0(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;I)V
    .registers 9

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_23

    if-eq v0, v3, :cond_23

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    if-eq v0, p1, :cond_23

    if-eq v0, p2, :cond_23

    move p1, v5

    goto :goto_24

    :cond_23
    move p1, v4

    :goto_24
    if-eq v0, v3, :cond_2a

    if-eq v0, v2, :cond_2a

    move p2, v5

    goto :goto_2b

    :cond_2a
    move p2, v4

    :goto_2b
    if-eqz v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move p1, p2

    :goto_2f
    const-string p2, "IconSurfaceManager"

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_42

    goto :goto_48

    :cond_42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_69

    :goto_48
    if-eq v0, v3, :cond_4b

    goto :goto_69

    :cond_4b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "releaseIconSurfaceCallback called for viewId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", will reset current data."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    goto :goto_90

    :cond_69
    :goto_69
    const-string/jumbo p1, "releaseIconSurfaceCallback return, "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_7f

    goto :goto_86

    :cond_7f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v5, :cond_86

    move v4, v5

    :cond_86
    :goto_86
    const-string p0, ", currentId: "

    const-string v1, ", viewId: "

    invoke-static {p1, v4, p0, v0, v1}, Lcom/android/launcher/l0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ILjava/lang/String;)V

    invoke-static {p1, v2, p2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :goto_90
    return-void
.end method

.method private static final releaseLastIconSurface$lambda$30(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releaseLastIconSurface running "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetLastSurfaceData()V

    return-void
.end method

.method private final resetCurrentSurfaceData()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isCurrentIconSurfaceHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private final resetIconToVisibleImp(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "resetIconToVisibleImp "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", callers: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconSurfaceManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    instance-of p0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x1

    if-eqz p0, :cond_39

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    goto :goto_51

    :cond_39
    instance-of p0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p0, :cond_51

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result p0

    if-eqz p0, :cond_51

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_52

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    :cond_51
    :goto_51
    return-void

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private final resetLastSurfaceData()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private final tryReleaseLastIconSurface(Landroid/view/View;ZI)Z
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p3

    :goto_b
    const-string/jumbo v0, "tryReleaseLastIconSurface: current id: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clickViewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", viewIdRunningAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentRunningAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p2, :cond_57

    const/4 p2, 0x1

    goto :goto_58

    :cond_57
    move p2, v0

    :goto_58
    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_68

    goto :goto_86

    :cond_68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_86

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result p2

    if-ne p2, p3, :cond_7b

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    goto :goto_86

    :cond_7b
    iget-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p2, p3, :cond_86

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseLastIconSurface(Landroid/view/View;)V

    :cond_86
    :goto_86
    return v2
.end method

.method private final tryReleaseLastIconSurfaceWhenCreate(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    const-string/jumbo v0, "tryReleaseLastIconSurfaceWhenCreate: current id: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", newId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_31

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_31

    move p0, v0

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z
    .registers 11

    sget v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const-string v1, "IconSurfaceManager"

    const/4 v2, 0x1

    if-nez v0, :cond_12

    const-string p0, "canSetIconVisibleOnAnimationEnd: anim duration is 0, return true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_12
    if-eqz p2, :cond_16

    move p2, v2

    goto :goto_17

    :cond_16
    const/4 p2, -0x1

    :goto_17
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    const-string v5, "canSetIconVisibleOnAnimationEnd is: "

    const-string v6, ", "

    invoke-static {v5, v3, v6, p2, v6}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5a

    if-eq p2, v3, :cond_5a

    iget-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eq p2, v0, :cond_60

    :cond_5a
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isInInterruptAnim(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_61

    :cond_60
    return v4

    :cond_61
    return v2
.end method

.method public final endWindowAnim(Landroid/view/View;ZZI)V
    .registers 9

    const-string v0, "endWindowAnim, isOpen = "

    const-string v1, ", releaseDirectly = "

    const-string v2, "IconSurfaceManager"

    invoke-static {v0, p2, v1, p3, v2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz p3, :cond_1c

    iget-object p4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz p4, :cond_14

    invoke-virtual {p4}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object p4

    goto :goto_15

    :cond_14
    const/4 p4, 0x0

    :goto_15
    invoke-direct {p0, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1, p2, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/View;ZI)V

    :goto_1f
    if-eqz p2, :cond_23

    const/4 p4, 0x1

    goto :goto_24

    :cond_23
    const/4 p4, -0x1

    :goto_24
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_40

    :cond_3f
    move p1, p4

    :goto_40
    const-string v3, ", "

    if-eq p4, p1, :cond_4b

    const-string/jumbo p0, "setStateOnAnimEnd not called as anim changed: "

    invoke-static {p0, p4, v3, p1, v2}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4b
    const-string/jumbo p1, "setStateOnAnimEnd called: "

    invoke-static {p1, v0, v3, p4, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p4, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", isOpen = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", callers: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final forceReleaseIconSurface(Z)V
    .registers 9

    const-string v0, "IconSurfaceManager"

    if-eqz p1, :cond_22

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string p1, "forceReleaseIconSurface post to main thread for releasing delayed"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceReleaseIconSurface needResetIconVisible="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " called, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    invoke-virtual {v3}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v3

    goto :goto_45

    :cond_44
    move-object v3, v4

    :goto_45
    const/4 v5, 0x1

    if-nez v3, :cond_4a

    move v3, v5

    goto :goto_4b

    :cond_4a
    move v3, v2

    :goto_4b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v6, :cond_5c

    invoke-virtual {v6}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v6

    goto :goto_5d

    :cond_5c
    move-object v6, v4

    :goto_5d
    if-nez v6, :cond_61

    move v6, v5

    goto :goto_62

    :cond_61
    move v6, v2

    :goto_62
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_73

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_74

    :cond_73
    move-object v6, v4

    :goto_74
    if-nez v6, :cond_78

    move v6, v5

    goto :goto_79

    :cond_78
    move v6, v2

    :goto_79
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_8a

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    goto :goto_8b

    :cond_8a
    move-object v6, v4

    :goto_8b
    if-nez v6, :cond_8e

    move v2, v5

    :cond_8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isNotEmpty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-nez v1, :cond_dc

    const-string v1, "forceReleaseIconSurface interceptIconSurface set true"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_dc
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_e5

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_e6

    :cond_e5
    move-object v0, v4

    :goto_e6
    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v1, :cond_ee

    invoke-virtual {v1}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v4

    :cond_ee
    if-eqz v0, :cond_104

    if-eqz p1, :cond_101

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_101

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_101

    invoke-direct {p0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetIconToVisibleImp(Landroid/view/View;)V

    :cond_101
    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    :cond_104
    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    if-eqz v4, :cond_11d

    if-eqz p1, :cond_11a

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastClickedView:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_11a

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_11a

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetIconToVisibleImp(Landroid/view/View;)V

    :cond_11a
    invoke-direct {p0, v4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    :cond_11d
    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetLastSurfaceData()V

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public final forceReleaseIconSurfaceSafely(Landroid/view/View;)V
    .registers 4

    const-string v0, "forceReleaseIconSurfaceSafely called, callers: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_34

    :cond_31
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseIconSurfaceSafelyImpl(Landroid/view/View;)V

    :goto_34
    return-void
.end method

.method public final forceReleaseLastIconSurfaceSafely(Landroid/view/View;)V
    .registers 4

    const-string v0, "forceReleaseLastIconSurfaceSafely called, callers: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    goto :goto_34

    :cond_31
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->forceReleaseLastIconSurfaceSafelyImpl(Landroid/view/View;)V

    :goto_34
    return-void
.end method

.method public final getCurrentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;ZZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->tryReleaseLastIconSurfaceWhenCreate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_15

    if-nez p3, :cond_15

    const-string p3, "IconSurfaceManager"

    const-string p4, "getCurrentIconSurface same view id, no need to create new iconSurface"

    invoke-static {p3, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    return-object p0

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->checkIfNeedTwoSurfaceWhenInterrupt(Landroid/view/View;IZZ)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentRunningAnim()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getCurrentSurfaceId()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getViewIdFromView(Landroid/view/View;)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    instance-of v1, v1, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v2, -0x1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_19

    check-cast p0, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_1a

    :cond_19
    move-object p0, v0

    :goto_1a
    if-eqz p0, :cond_23

    iget p0, p0, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_24

    :cond_23
    move-object p0, v0

    :goto_24
    const/4 v1, 0x3

    if-nez p0, :cond_28

    goto :goto_2e

    :cond_28
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_39

    :goto_2e
    const/4 v1, 0x2

    if-nez p0, :cond_33

    goto/16 :goto_125

    :cond_33
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_125

    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p1, :cond_44

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    :cond_44
    if-eqz v0, :cond_48

    iget v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    :cond_48
    return v2

    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isAllAppsIcon(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdForAllAppsIcon(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_54
    instance-of p0, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-eqz p0, :cond_125

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_65

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_66

    :cond_65
    move-object v1, v0

    :goto_66
    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v1

    goto :goto_6e

    :cond_6d
    move v1, v2

    :goto_6e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_79

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_7a

    :cond_79
    move-object v3, v0

    :goto_7a
    if-eqz v3, :cond_7e

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    :cond_7e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_89

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_8a

    :cond_89
    move-object v3, v0

    :goto_8a
    if-eqz v3, :cond_91

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_92

    :cond_91
    move-object v3, v0

    :goto_92
    const/4 v4, 0x0

    if-eqz v3, :cond_9a

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_9b

    :cond_9a
    move v3, v4

    :goto_9b
    if-eqz p0, :cond_9f

    move-object v5, p1

    goto :goto_a0

    :cond_9f
    move-object v5, v0

    :goto_a0
    const/4 v6, 0x1

    if-eqz v5, :cond_ab

    invoke-virtual {v5}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getLastcomponentname()I

    move-result v5

    if-nez v5, :cond_ab

    move v5, v6

    goto :goto_ac

    :cond_ab
    move v5, v4

    :goto_ac
    if-eqz v5, :cond_d7

    if-eqz p0, :cond_b2

    move-object p0, p1

    goto :goto_b3

    :cond_b2
    move-object p0, v0

    :goto_b3
    if-nez p0, :cond_b7

    goto/16 :goto_108

    :cond_b7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_c2

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_c3

    :cond_c2
    move-object v5, v0

    :goto_c3
    if-eqz v5, :cond_ca

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_cb

    :cond_ca
    move-object v5, v0

    :goto_cb
    if-eqz v5, :cond_d2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_d3

    :cond_d2
    move v5, v4

    :goto_d3
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->setLastcomponentname(I)V

    goto :goto_108

    :cond_d7
    if-eqz p0, :cond_db

    move-object p0, p1

    goto :goto_dc

    :cond_db
    move-object p0, v0

    :goto_dc
    if-eqz p0, :cond_101

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v7, v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_e9

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_ea

    :cond_e9
    move-object v5, v0

    :goto_ea
    if-eqz v5, :cond_f1

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_f2

    :cond_f1
    move-object v5, v0

    :goto_f2
    if-eqz v5, :cond_f9

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_fa

    :cond_f9
    move v5, v4

    :goto_fa
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getLastcomponentname()I

    move-result p0

    if-ne v5, p0, :cond_101

    goto :goto_102

    :cond_101
    move v6, v4

    :goto_102
    if-nez v6, :cond_108

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderItemIcon;->getLastcomponentname()I

    move-result v3

    :cond_108
    :goto_108
    if-eqz v3, :cond_10c

    move v4, v3

    goto :goto_122

    :cond_10c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_117

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_118

    :cond_117
    move-object p0, v0

    :goto_118
    if-eqz p0, :cond_11c

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :cond_11c
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :cond_122
    :goto_122
    add-int/2addr v1, v2

    add-int/2addr v1, v4

    return v1

    :cond_125
    :goto_125
    if-eqz p1, :cond_12c

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_12d

    :cond_12c
    move-object p0, v0

    :goto_12d
    instance-of p1, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_134

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_134
    if-eqz v0, :cond_13a

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v2

    :cond_13a
    return v2
.end method

.method public final hideIconSurface()V
    .registers 5

    const-string v0, "IconSurfaceManager"

    const-string v1, "hideIconSurface called, "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_13

    :cond_12
    move-object v2, v3

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isCurrentIconSurfaceHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v3

    :cond_37
    if-eqz v3, :cond_53

    monitor-enter v3

    :try_start_3a
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_50

    if-nez p0, :cond_42

    monitor-exit v3

    return-void

    :cond_42
    :try_start_42
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_50

    monitor-exit v3

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_53
    :goto_53
    return-void
.end method

.method public final interruptWindowAnim(Landroid/view/View;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isAllAppsIcon(Landroid/view/View;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, p0

    :goto_9
    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_10

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_10
    const/4 p1, 0x0

    if-eqz p0, :cond_1a

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x68

    if-ne p0, v0, :cond_1a

    const/4 p1, 0x1

    :cond_1a
    return p1
.end method

.method public final isAnimRunning(Z)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, -0x1

    :goto_6
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final isIconSurfaceAnimRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isIconSurfaceValid()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isViewAnimRunning(Landroid/view/View;Z)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    const/4 v1, 0x1

    if-eqz p2, :cond_8

    move p2, v1

    goto :goto_9

    :cond_8
    const/4 p2, -0x1

    :goto_9
    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1c

    goto :goto_23

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_23

    move v0, v1

    :cond_23
    :goto_23
    return v0
.end method

.method public final isViewInterruptEnable(Landroid/view/View;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_11

    :cond_10
    move-object v0, p0

    :goto_11
    if-eqz v0, :cond_19

    iget p0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_19
    instance-of p1, p1, Lcom/android/launcher3/folder/big/BigFolderItemIcon;

    if-nez p1, :cond_28

    sget-object p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->INTERRUPT_CONTAINER:Ljava/util/List;

    invoke-static {p1, p0}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x1

    :goto_29
    return p0
.end method

.method public final releaseIconSurface(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    const-string v0, "forceReleaseIconSurface called "

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result v0

    if-ne p1, v0, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    :cond_40
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdInterruptMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final releaseLastIconSurface(Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "releaseLastIconSurface: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconSurfaceManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->lastFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideOrRemoveIconSurfaceInNextFrame(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    const-string v2, "IconSurfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparentIconSurface: iconContainerSurfaceView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-nez v2, :cond_38

    :cond_2a
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_38

    :cond_37
    move-object v2, v1

    :cond_38
    :goto_38
    if-eqz v2, :cond_d9

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-nez p0, :cond_47

    const-string p0, "IconSurfaceManager"

    const-string/jumbo p1, "reparentIconSurface failed as currentFloatingIconSurface is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    if-eqz v0, :cond_d7

    monitor-enter v0

    :try_start_4a
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-nez p0, :cond_5a

    const-string p0, "IconSurfaceManager"

    const-string/jumbo p1, "reparentIconSurface failed as sc is invalid"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_d4

    monitor-exit v0

    return-void

    :cond_5a
    :try_start_5a
    const-string p0, "IconSurfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reparentIconSurface parent sc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_76

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    goto :goto_77

    :cond_76
    move-object p2, v1

    :goto_77
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "， "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    :cond_8c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_5a .. :try_end_96} :catchall_d4

    :try_start_96
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_a6
    .catchall {:try_start_96 .. :try_end_a6} :catchall_a7

    goto :goto_ac

    :catchall_a7
    move-exception p0

    :try_start_a8
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_ac
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_cd

    const-string p2, "IconSurfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentIconSurface error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_a8 .. :try_end_cd} :catchall_d4

    :cond_cd
    monitor-exit v0

    new-instance v1, Lh4/k;

    invoke-direct {v1, p0}, Lh4/k;-><init>(Ljava/lang/Object;)V

    goto :goto_d7

    :catchall_d4
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_d7
    :goto_d7
    if-nez v1, :cond_e1

    :cond_d9
    const-string p0, "IconSurfaceManager"

    const-string/jumbo p1, "reparentIconSurface failed as all sc is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    return-void
.end method

.method public final setLastClickedViewId(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    instance-of v2, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_10

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    if-eqz v1, :cond_19

    iget v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isViewInterruptEnable(Landroid/view/View;)Z

    move-result v1

    const-string v2, "IconSurfaceManager"

    if-eqz v1, :cond_40

    const-string/jumbo v0, "setLastClickedViewId "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->clickedViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_55

    :cond_40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setLastClickedViewId return as icon not in interrupt container, container is: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method public final startWindowAnim(Landroid/view/View;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isCurrentIconSurfaceHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, -0x1

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    move p2, v0

    :goto_11
    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    if-eq p1, v0, :cond_29

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->viewIdAnimMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    const-string/jumbo v0, "setStateOnAnimStart called: "

    const-string v1, ", "

    invoke-static {v0, p1, v1, p2, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentRunningAnim:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " callers: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconSurfaceManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final transferViewToSurface(Landroid/view/View;Landroid/view/View;Landroid/view/ViewRootImpl;Landroid/view/SurfaceView;Ljava/lang/String;IILcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    const-string/jumbo v6, "transferViewToSurface id: "

    const-string/jumbo v7, "name"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "drawableSize"

    move-object/from16 v10, p8

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 v8, 0x0

    if-eqz v7, :cond_2f

    if-eqz v7, :cond_28

    invoke-virtual {v7}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v7

    goto :goto_29

    :cond_28
    move-object v7, v8

    :goto_29
    invoke-direct {v1, v7}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->releaseIconSurface(Landroid/view/SurfaceControl;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->resetCurrentSurfaceData()V

    :cond_2f
    iget-object v7, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    const/4 v9, 0x0

    const-string v14, "IconSurfaceManager"

    if-eqz v7, :cond_46

    const-string/jumbo v0, "transferViewToSurface intercept as force release"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->interceptIconSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v8

    :cond_46
    sget v7, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v11, 0x0

    invoke-static {v7, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_56

    const-string/jumbo v0, "transferViewToSurface: anim duration is 0"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_56
    if-nez v0, :cond_5f

    const-string/jumbo v0, "transferViewToSurface: view is null"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_5f
    if-nez p3, :cond_78

    const-string/jumbo v7, "transferViewToSurface: viewRootImpl is null"

    invoke-static {v14, v7}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6e

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    goto :goto_6f

    :cond_6e
    move-object v7, v8

    :goto_6f
    if-nez v7, :cond_7a

    const-string/jumbo v0, "transferViewToSurface: clicked view root impl is null"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_78
    move-object/from16 v7, p3

    :cond_7a
    if-ltz v4, :cond_1b7

    if-gez v5, :cond_80

    goto/16 :goto_1b7

    :cond_80
    new-instance v11, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v11, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v11, v0, v12}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v13, v0, Landroid/graphics/Point;->x:I

    if-ltz v13, :cond_1b0

    iget v8, v0, Landroid/graphics/Point;->y:I

    if-ltz v8, :cond_1af

    iget v15, v12, Landroid/graphics/Point;->x:I

    if-ltz v15, :cond_1af

    iget v12, v12, Landroid/graphics/Point;->y:I

    if-gez v12, :cond_a4

    goto/16 :goto_1af

    :cond_a4
    if-eqz v13, :cond_a8

    if-nez v8, :cond_ac

    :cond_a8
    iput v4, v0, Landroid/graphics/Point;->x:I

    iput v5, v0, Landroid/graphics/Point;->y:I

    :cond_ac
    if-eqz p4, :cond_b4

    invoke-virtual/range {p4 .. p4}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_b8

    :cond_b4
    invoke-virtual {v7}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :cond_b8
    :try_start_b8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "transferViewToSurface parent sc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/view/SurfaceControl$Builder;

    iget-object v8, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->session:Landroid/view/SurfaceSession;

    invoke-direct {v7, v8}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v7, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v3, "IconSurfaceManager#transferViewToSurface"

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    invoke-virtual {v3, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    if-eqz v2, :cond_119

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_119

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "clickedView.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/common/config/FeatureOption;->isSupportWCG(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_119

    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareWideColorGamutCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    const-string/jumbo v5, "{\n                    su…anvas()\n                }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_123

    :cond_119
    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    const-string/jumbo v5, "{\n                    //…anvas()\n                }"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_123
    .catchall {:try_start_b8 .. :try_end_123} :catchall_17c

    :goto_123
    :try_start_123
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v9, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v4}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_177

    :try_start_12b
    invoke-virtual {v3, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-object v8, v3

    move-object v9, v0

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;-><init>(Landroid/view/SurfaceControl;Lcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)V

    iput-object v3, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentClickedView:Ljava/lang/ref/WeakReference;

    iget-object v0, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    return-object v0

    :catchall_177
    move-exception v0

    invoke-virtual {v3, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0
    :try_end_17c
    .catchall {:try_start_12b .. :try_end_17c} :catchall_17c

    :catchall_17c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1ad

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->currentSurfaceIconId:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_1ad
    const/4 v0, 0x0

    return-object v0

    :cond_1af
    :goto_1af
    const/4 v8, 0x0

    :cond_1b0
    const-string/jumbo v0, "transferViewToSurface: launchView dimensions must not be negative"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_1b7
    :goto_1b7
    const-string/jumbo v0, "transferViewToSurface: width and height must be positive"

    invoke-static {v14, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public final trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V
    .registers 6

    const-string/jumbo v0, "sc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transaction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconSurfaceParam"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_11
    invoke-virtual {p3, p2}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p3

    monitor-enter p2
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_4f

    :try_start_16
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->isCurrentIconSurfaceHidden:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getViewIdFromView(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->getCurrentSurfaceId()I

    move-result p0

    if-ne p1, p0, :cond_2a

    const/4 p0, 0x0

    goto :goto_2e

    :cond_2a
    invoke-virtual {p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->getAlpha()F

    move-result p0

    :goto_2e
    invoke-virtual {p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->getWindowCrop()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;->getRadius()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_4c

    :try_start_4a
    monitor-exit p2

    goto :goto_54

    :catchall_4c
    move-exception p0

    monitor-exit p2

    throw p0
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_54
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_66

    const-string p1, "IconSurfaceManager"

    const-string/jumbo p2, "trySetIconSurfaceProp error, surface may be already released, no need to do anything: "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_66
    return-void
.end method
