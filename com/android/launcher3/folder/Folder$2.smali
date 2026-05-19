.class Lcom/android/launcher3/folder/Folder$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/Folder;

.field public final synthetic val$a:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/Animator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    iput-object p2, p0, Lcom/android/launcher3/folder/Folder$2;->val$a:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder$2;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/Folder$2;->this$0:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder$2;->val$a:Landroid/animation/Animator;

    iput-object p0, p1, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method
