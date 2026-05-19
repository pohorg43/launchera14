.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;
.super Landroidx/dynamicanimation/animation/FloatValueHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final scrimProgressProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/OplusOverviewScrim;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-direct {p0}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>()V

    sget-object p1, Lcom/android/launcher3/graphics/OplusOverviewScrim;->Companion:Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/graphics/OplusOverviewScrim$Companion;->getScrimProgressWithChannel(I)Landroid/util/FloatProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->scrimProgressProperty:Landroid/util/FloatProperty;

    return-void
.end method


# virtual methods
.method public setValue(F)V
    .registers 8

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/anim/light/Utils;->isBlurUnavailableAndOverlayVisible(Lcom/android/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMDragLayer$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_37

    :cond_1c
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMDragLayer$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    sub-float v3, v2, p1

    iget-object v4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getDraglayerAlphaStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v5}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getDraglayerAlphaEnd$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_37
    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getTaskViewManager()Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewAlpha(F)V

    :cond_46
    sub-float/2addr v2, p1

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_6f

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMBackrgoundAlphaAnimation$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringForce;->getFinalPosition()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_69

    :cond_68
    const/4 p1, 0x0

    :goto_69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-nez p1, :cond_9e

    :cond_6f
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getWallpaperBlurEndValue$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_81

    const/4 p1, 0x1

    goto :goto_82

    :cond_81
    const/4 p1, 0x0

    :goto_82
    if-eqz p1, :cond_85

    goto :goto_9e

    :cond_85
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMDepthController$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMWallPaperBlurStart$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getWallpaperBlurEndValue$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)F

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->scrimProgressProperty:Landroid/util/FloatProperty;

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getOverviewScrim$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher3/graphics/OplusOverviewScrim;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$backgroundVisionHolder$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/states/OPlusBaseState;->getOverviewScrimAlpha(Lcom/android/launcher3/Launcher;)F

    move-result p0

    mul-float/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
