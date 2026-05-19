.class public final Lcom/android/systemui/animation/ViewRootSync;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/systemui/animation/ViewRootSync;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/animation/ViewRootSync;

    invoke-direct {v0}, Lcom/android/systemui/animation/ViewRootSync;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "otherView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "then"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    new-instance v1, Lcom/android/systemui/animation/ViewRootSync$synchronizeNextDraw$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/animation/ViewRootSync$synchronizeNextDraw$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final synchronizeNextDraw$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$then"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "otherView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "then"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_63

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_63

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_63

    :cond_39
    new-instance p0, Landroid/window/SurfaceSyncGroup;

    const-string v0, "SysUIAnimation"

    invoke-direct {p0, v0}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/model/b1;

    invoke-direct {v1, p3}, Lcom/android/launcher3/model/b1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, v1}, Landroid/window/SurfaceSyncGroup;->addSyncCompleteCallback(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Landroid/view/View;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    return-void

    :cond_63
    :goto_63
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
