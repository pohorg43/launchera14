.class public final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$Companion;

.field private static final TAG:Ljava/lang/String; = "IconSurfaceHolder"


# instance fields
.field private currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

.field private final deviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

.field private hasReset:Z

.field private final iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

.field private isViewSupportAsync:Z

.field private lastClickedView:Landroid/view/View;

.field private lastFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

.field private lastIconView:Landroid/view/View;

.field private final launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->Companion:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusDeviceProfile;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceProfile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->launcher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->deviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    sget-object p1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible$lambda$1$lambda$0(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getDeviceProfile$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/OplusDeviceProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->deviceProfile:Lcom/android/launcher3/OplusDeviceProfile;

    return-object p0
.end method

.method public static final synthetic access$getHasReset$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->hasReset:Z

    return p0
.end method

.method public static final synthetic access$getIconSurfaceManager$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    return-object p0
.end method

.method public static final synthetic access$getLauncher$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->launcher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static final synthetic access$setLastIconView$p(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastIconView:Landroid/view/View;

    return-void
.end method

.method public static synthetic releaseAllIconSurface$default(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;ZLandroid/view/View;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->releaseAllIconSurface(ZLandroid/view/View;Z)V

    return-void
.end method

.method private static final resetIconToVisible$lambda$1$lambda$0(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisibleImp(Landroid/view/View;)V

    return-void
.end method

.method private final resetIconToVisibleImp(Landroid/view/View;)V
    .registers 4

    const-string v0, "IconSurfaceHolder"

    const-string/jumbo v1, "resetIconToVisibleImp"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->launcher:Lcom/android/launcher3/Launcher;

    invoke-static {p1, v1}, Lcom/android/launcher3/views/OplusFloatingIconView;->checkShowOriginalView(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->isDragging(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    :cond_21
    const-string/jumbo v1, "resetIconToVisibleImp: clickedView can\'t be visible because is dragged."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    goto :goto_4f

    :cond_37
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_4f

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_52

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    :cond_4f
    :goto_4f
    iput-boolean v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->hasReset:Z

    return-void

    :array_52
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic setUpFloatingIconSurface$default(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZILjava/lang/Object;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_5

    const/4 p5, 0x1

    :cond_5
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->setUpFloatingIconSurface(Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZ)V

    return-void
.end method


# virtual methods
.method public final endWindowAnim(Landroid/view/View;ZZI)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    if-eqz v0, :cond_1d

    if-eqz p2, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    goto :goto_18

    :cond_13
    if-nez p2, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->endWindowAnim(Landroid/view/View;ZZI)V

    :cond_1d
    return-void
.end method

.method public final getCurrentFloatingIconSurface()Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    return-object p0
.end method

.method public final getLastClickedView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    return-object p0
.end method

.method public final releaseAllIconSurface(ZLandroid/view/View;Z)V
    .registers 7

    const-string/jumbo v0, "releaseAllIconSurface: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    xor-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, p1, 0x1

    const-string v2, "IconSurfaceHolder"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz p3, :cond_2b

    if-nez p1, :cond_1d

    goto :goto_2b

    :cond_1d
    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    goto :goto_5b

    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of p2, p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    const/4 p3, 0x0

    if-eqz p2, :cond_35

    check-cast p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    goto :goto_36

    :cond_35
    move-object p1, p3

    :goto_36
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    :cond_3b
    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iget-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    const-string p1, "force release icon surface"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastIconView:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    :cond_5b
    :goto_5b
    return-void
.end method

.method public final releaseIconSurface()V
    .registers 3

    const-string v0, "IconSurfaceHolder"

    const-string/jumbo v1, "releaseIconSurface"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisible(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iget-object v1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseIconSurface(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastIconView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    return-void
.end method

.method public final resetIconToVisible(Landroid/view/View;)V
    .registers 4

    const-string v0, "IconSurfaceHolder"

    const-string/jumbo v1, "reset icon when anim exception"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :cond_27
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->resetIconToVisibleImp(Landroid/view/View;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final setCurrentFloatingIconSurface(Lcom/android/launcher3/anim/floatingdrawable/IconSurface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    return-void
.end method

.method public final setLastClickedView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    return-void
.end method

.method public final setRemoteInterrupt(Landroid/view/View;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->setRemoteInterrupt(Landroid/view/View;Z)V

    :cond_9
    return-void
.end method

.method public final setUpFloatingIconSurface(Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;ZIZ)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v0, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewSupportAsync(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->launcher:Lcom/android/launcher3/Launcher;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/launcher/Launcher;

    goto :goto_15

    :cond_14
    move-object v0, v2

    :goto_15
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconSurfaceContainerView()Landroid/view/SurfaceView;

    move-result-object v0

    move-object v9, v0

    goto :goto_1e

    :cond_1d
    move-object v9, v2

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v9, v1, p5}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->getIconSurfaceIfPossible(Landroid/view/View;Landroid/view/SurfaceView;ZZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    move-result-object p5

    iput-object p5, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    const/4 p5, 0x1

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lcom/android/launcher3/views/FloatingIconView;->getHideOriginal()Z

    move-result v0

    if-nez v0, :cond_32

    move v0, p5

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    if-eqz v0, :cond_36

    return-void

    :cond_36
    iput-object p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastFloatingIconView:Lcom/android/launcher3/views/FloatingIconView;

    iput-object p2, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->lastClickedView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->currentFloatingIconSurface:Lcom/android/launcher3/anim/floatingdrawable/IconSurface;

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/android/launcher3/anim/floatingdrawable/IconSurface;->getSc()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_44

    :cond_43
    move-object v0, v2

    :goto_44
    if-nez v0, :cond_47

    move v1, p5

    :cond_47
    const-string/jumbo p5, "setUpFloatingIconSurface needRedrawIconSurface: "

    const-string v0, ", iconId: "

    const-string v3, ", callers: "

    invoke-static {p5, v1, v0, p4, v3}, Lcom/android/launcher3/y0;->a(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "IconSurfaceHolder"

    invoke-static {v0, p5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p5, p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz p5, :cond_6b

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/views/OplusFloatingIconView;

    :cond_6b
    if-eqz v2, :cond_7b

    new-instance p5, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;

    move-object v3, p5

    move-object v4, p0

    move v5, p4

    move-object v6, p2

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder$setUpFloatingIconSurface$1;-><init>(Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;ILandroid/view/View;Lcom/android/launcher3/views/FloatingIconView;ZLandroid/view/SurfaceView;)V

    invoke-virtual {v2, p5}, Lcom/android/launcher3/views/OplusFloatingIconView;->setIconLoadedListener(Lcom/android/launcher3/views/OplusFloatingIconView$IconDrawableLoadedListener;)V

    :cond_7b
    return-void
.end method

.method public final setViewSupportAsync(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->isViewSupportAsync(Landroid/view/View;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    return-void
.end method

.method public final startWindowAnim(Landroid/view/View;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->isViewSupportAsync:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;->iconSurfaceManager:Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->startWindowAnim(Landroid/view/View;Z)V

    :cond_9
    return-void
.end method
