.class public interface abstract Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/AnimatorWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/AnimatorWatcher$Listener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onAnimationCancel()V
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart()V
.end method
