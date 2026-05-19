.class public final Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager$StateListener;->onStateTransitionComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getProgress()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float v0, v2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_3c

    move v0, v2

    goto :goto_3d

    :cond_3c
    move v0, v3

    :goto_3d
    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v4, :cond_5a

    if-eqz v0, :cond_5a

    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    move v2, v3

    :goto_4a
    if-eqz v2, :cond_5a

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMIsLaunchToRecent()Z

    move-result p1

    if-nez p1, :cond_5a

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->showCouiToolTips()V

    goto :goto_5f

    :cond_5a
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    :goto_5f
    return-void
.end method

.method public onStateTransitionStart(Ljava/lang/Object;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager$StateListener;->onStateTransitionStart(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDrawerAppGlobalSearch(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->setMIsLaunchToRecent(Z)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDrawerAppGlobalSearch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    :cond_33
    return-void
.end method
