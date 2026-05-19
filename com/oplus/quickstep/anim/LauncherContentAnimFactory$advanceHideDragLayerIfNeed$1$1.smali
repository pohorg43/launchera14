.class public final Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$advanceHideDragLayerIfNeed$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->advanceHideDragLayerIfNeed(Landroid/app/Activity;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$advanceHideDragLayerIfNeed$1$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$advanceHideDragLayerIfNeed$1$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-static {p1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$getMLauncher$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/launcher/Launcher;

    goto :goto_f

    :cond_e
    move-object p1, v1

    :goto_f
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getWorkspaceScrim()Lcom/android/launcher3/views/WorkSpaceScrimView;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/launcher3/views/WorkSpaceScrimView;->resetIconBlur()V

    :cond_1a
    iget-object p0, p0, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory$advanceHideDragLayerIfNeed$1$1;->this$0:Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;

    invoke-static {p0, v1}, Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;->access$setAdvanceFadeDragLayerAnim$p(Lcom/oplus/quickstep/anim/LauncherContentAnimFactory;Landroid/animation/ObjectAnimator;)V

    return-void
.end method
