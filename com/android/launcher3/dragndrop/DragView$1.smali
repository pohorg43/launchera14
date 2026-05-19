.class Lcom/android/launcher3/dragndrop/DragView$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragView;-><init>(Landroid/content/Context;Landroid/view/View;IIIIFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->access$100(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->access$002(Lcom/android/launcher3/dragndrop/DragView;Z)Z

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView;->access$200(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$1;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragView;->access$200(Lcom/android/launcher3/dragndrop/DragView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method
