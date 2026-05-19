.class public Lcom/android/launcher3/OplusBaseActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;
    }
.end annotation


# instance fields
.field private isInMinimize:Z

.field private isInSplitScreenMode:Z

.field private mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final getSplitScreenObserver()Lcom/oplus/app/IOplusSplitScreenObserver;
    .registers 2

    new-instance v0, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/OplusBaseActivity$SplitScreenObserver;-><init>(Lcom/android/launcher3/OplusBaseActivity;)V

    return-object v0
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final isInMinimize()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize:Z

    return p0
.end method

.method public final isInSplitScreenMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode:Z

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    const v0, 0x7f130216

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode:Z

    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusBaseActivity;->mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    if-nez p1, :cond_2d

    invoke-direct {p0}, Lcom/android/launcher3/OplusBaseActivity;->getSplitScreenObserver()Lcom/oplus/app/IOplusSplitScreenObserver;

    move-result-object p1

    :cond_2d
    iput-object p1, p0, Lcom/android/launcher3/OplusBaseActivity;->mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    if-eqz p1, :cond_3a

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity;->mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    :cond_3a
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/OplusBaseActivity;->mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusBaseActivity;->mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->unregisterSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusBaseActivity;->mSplitScreenObserver:Lcom/oplus/app/IOplusSplitScreenObserver;

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_c

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode:Z

    const-string v0, "isInSplitScreenMode"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public onSplitMinimizeModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onSplitModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object p0, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusBaseActivity;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(IZ)V
    .registers 3

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    :cond_9
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setInMinimize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize:Z

    return-void
.end method

.method public final setInSplitScreenMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode:Z

    return-void
.end method
