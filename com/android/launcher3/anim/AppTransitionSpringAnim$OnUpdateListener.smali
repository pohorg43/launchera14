.class public interface abstract Lcom/android/launcher3/anim/AppTransitionSpringAnim$OnUpdateListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppTransitionSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnUpdateListener"
.end annotation


# virtual methods
.method public abstract getAppTransitionParam(Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/graphics/RectF;F)V
.end method

.method public abstract onUpdate(Landroid/graphics/RectF;FZLcom/android/systemui/shared/system/AppTransitionParam;)V
.end method
