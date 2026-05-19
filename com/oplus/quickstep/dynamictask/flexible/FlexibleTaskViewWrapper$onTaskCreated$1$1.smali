.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->onTaskCreated(ILandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $thumbnailView:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->$thumbnailView:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "RFT_FlexibleWrapper"

    const-string v0, "onTaskCreated(), thumbnailView alpha anim cancel."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->$thumbnailView:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->access$setThumbnailHideAnimator$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "RFT_FlexibleWrapper"

    const-string v0, "onTaskCreated(), thumbnailView alpha anim end."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->$thumbnailView:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setWaitNextDraw(Z)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleView()Lcom/oplus/flexiblewindow/FlexibleTaskView;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p1, v0}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_25
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper$onTaskCreated$1$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-static {p0, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->access$setThumbnailHideAnimator$p(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;Landroid/animation/ObjectAnimator;)V

    return-void
.end method
