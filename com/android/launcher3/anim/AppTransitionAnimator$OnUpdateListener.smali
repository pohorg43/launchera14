.class public interface abstract Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppTransitionAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AppTransitionAnimator$OnUpdateListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;FZ)V
.end method

.method public abstract getIconTransitionParam(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFLcom/android/systemui/shared/system/AppTransitionParam;ZIZZ)Lcom/android/launcher3/anim/iconsurfacemanager/IconTransitionParam;
.end method

.method public abstract onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V
.end method

.method public abstract performAsyncWindowAnimation(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceHolder;)V
.end method

.method public abstract setTempRectForCustomIconRadius(FFFFZ)V
.end method
