.class public final Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$createCustomBgAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->createCustomBgAnimator(IZJJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$createCustomBgAnimator$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController$createCustomBgAnimator$2;->this$0:Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;->access$setMCustomBgAnimator$p(Lcom/android/launcher3/taskbar/OplusTaskbarDragLayerController;Landroid/animation/Animator;)V

    return-void
.end method
