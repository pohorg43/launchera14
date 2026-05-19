.class Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->clearKeyViewFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

.field public final synthetic val$focusView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->val$focusView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->val$focusView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_1b

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->val$focusView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_35

    :cond_1b
    iget-object v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {v1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$200(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)F

    move-result v1

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr p1, v2

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->val$focusView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$2;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$200(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)F

    move-result p0

    sub-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setScaleY(F)V

    :goto_35
    return-void
.end method
