.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/FolderAnimUtil;->initListener(Landroid/animation/Animator;Lcom/android/launcher/Launcher;FF[FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field public final synthetic $folderClose:Z

.field public final synthetic $hotseat:Lcom/android/launcher3/OplusHotseat;

.field public final synthetic $ignoreWallpaperAnim:Z

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic $scaleRange:[F

.field public final synthetic $toAlpha:F

.field public final synthetic $toBlur:F

.field public final synthetic $workspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;FLcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/OplusHotseat;ZLcom/android/launcher3/uioverrides/states/OplusDepthController;FZLcom/android/launcher/Launcher;[F)V
    .registers 11

    iput-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$workspace:Lcom/android/launcher3/OplusWorkspace;

    iput p2, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toAlpha:F

    iput-object p3, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p4, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$hotseat:Lcom/android/launcher3/OplusHotseat;

    iput-boolean p5, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$ignoreWallpaperAnim:Z

    iput-object p6, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iput p7, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toBlur:F

    iput-boolean p8, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$folderClose:Z

    iput-object p9, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p10, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$scaleRange:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Anim Cancel when folderClose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$folderClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", set alpha to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", set scale to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$scaleRange:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$workspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$scaleRange:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$workspace:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$scaleRange:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$folderClose:Z

    const/4 v0, 0x4

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$hotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$workspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3f

    :cond_28
    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$launcher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$workspace:Lcom/android/launcher3/OplusWorkspace;

    iget v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toAlpha:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$hotseat:Lcom/android/launcher3/OplusHotseat;

    iget v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toAlpha:F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$ignoreWallpaperAnim:Z

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 v0, 0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$toBlur:F

    sub-float/2addr v0, v1

    const v1, 0x3c23d70a  # 0.01f

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_2c
    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->cancelReplaceAnimation()V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$folderClose:Z

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$hotseat:Lcom/android/launcher3/OplusHotseat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusHotseat;->setAnimVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$workspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimVisibility(I)V

    :cond_49
    iget-object p0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$initListener$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
