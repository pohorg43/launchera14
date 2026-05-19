.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$childView:Landroid/view/View;

.field public final synthetic val$startScaleX:F

.field public final synthetic val$startScaleY:F

.field public final synthetic val$startTransX:F

.field public final synthetic val$startTransY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;FFFF)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleX:F

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleY:F

    iput p5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransX:F

    iput p6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleX:F

    invoke-static {p1, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleX(Landroid/view/View;F)Z

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleY:F

    invoke-static {p1, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setScaleY(Landroid/view/View;F)Z

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransX:F

    invoke-static {p1, v0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setTranslationX(Landroid/view/View;F)Z

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransY:F

    invoke-static {p1, p0}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setTranslationY(Landroid/view/View;F)Z

    return-void
.end method
