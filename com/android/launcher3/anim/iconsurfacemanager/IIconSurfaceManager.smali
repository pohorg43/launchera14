.class public interface abstract Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract canSetIconVisibleOnAnimationEnd(Landroid/view/View;Z)Z
.end method

.method public abstract endWindowAnim(Landroid/view/View;ZZI)V
.end method

.method public abstract forceReleaseIconSurface()V
.end method

.method public abstract forceReleaseIconSurface(Z)V
.end method

.method public abstract forceReleaseIconSurfaceSafely(Landroid/view/View;)V
.end method

.method public abstract forceReleaseLastIconSurfaceSafely(Landroid/view/View;)V
.end method

.method public abstract getCurrentRunningAnim(Landroid/view/View;)I
.end method

.method public abstract getCurrentSurfaceId(Landroid/view/View;)I
.end method

.method public abstract getIconSurfaceIfPossible(Landroid/view/View;Landroid/view/SurfaceView;ZZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
.end method

.method public abstract getLauncherCardBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
.end method

.method public abstract getViewId(Landroid/view/View;)I
.end method

.method public abstract hideIconSurface()V
.end method

.method public abstract isAllAppsIcon(Landroid/view/View;)Z
.end method

.method public abstract isAnimRunning(Landroid/view/View;Z)Z
.end method

.method public abstract isClickedViewSeedlingCard(Landroid/view/View;)Z
.end method

.method public abstract isCurrentIconSurfaceValid(Landroid/view/View;)Z
.end method

.method public abstract isIconSurfaceAnimRunning()Z
.end method

.method public abstract isViewAnimRunning(Landroid/view/View;Z)Z
.end method

.method public abstract isViewInterruptEnable(Landroid/view/View;)Z
.end method

.method public abstract isViewSupportAsync(Landroid/view/View;)Z
.end method

.method public abstract releaseIconSurface(Landroid/view/View;)V
.end method

.method public abstract releaseLastIconSurface(Landroid/view/View;)V
.end method

.method public abstract reparentIconSurface(Landroid/view/View;Landroid/view/SurfaceView;)V
.end method

.method public abstract setLastClickedViewId(Landroid/view/View;)V
.end method

.method public abstract setRemoteInterrupt(Landroid/view/View;Z)V
.end method

.method public abstract startWindowAnim(Landroid/view/View;Z)V
.end method

.method public abstract transferViewToSurface(Landroid/view/View;Landroid/view/View;Landroid/view/ViewRootImpl;Landroid/view/SurfaceView;Ljava/lang/String;IILcom/android/launcher3/anim/floatingdrawable/DrawableSize;ZIZ)Lcom/android/launcher3/anim/floatingdrawable/IconSurface;
.end method

.method public abstract trySetIconSurfaceProp(Landroid/view/View;Landroid/view/SurfaceControl;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;)V
.end method
