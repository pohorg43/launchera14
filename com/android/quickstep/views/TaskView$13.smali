.class Lcom/android/quickstep/views/TaskView$13;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/quickstep/views/TaskView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/TaskView;)Ljava/lang/Float;
    .registers 2

    iget-object p0, p1, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView$13;->get(Lcom/android/quickstep/views/TaskView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/quickstep/views/TaskView;F)V
    .registers 6

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p0

    if-eqz p0, :cond_75

    instance-of p0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz p0, :cond_75

    move-object p0, p1

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isGridTaskDragAnimatorRunning()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMaxDismissScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_33

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMinDismissScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_33

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMinDismissScale()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_33

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->mappingDismissScaleWhenDragToDown(F)F

    move-result p2

    goto :goto_75

    :cond_33
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isGridTaskDragAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMaxDismissScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_75

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getMaxDismissScale()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_75

    :try_start_49
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getScaleAnimatorForGridRecentView()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getScaleAnimatorForGridRecentView()Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->removeScaleAnimatorForGridRecentViews()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p0

    invoke-static {}, Lcom/android/quickstep/views/TaskView;->access$1900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValue exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    :goto_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setValue: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SNAPSHOT_SCALE"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/quickstep/views/TaskView;->access$2000(Lcom/android/quickstep/views/TaskView;F)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskView;->setTaskCornerRadiusUseScale(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskView$13;->setValue(Lcom/android/quickstep/views/TaskView;F)V

    return-void
.end method
