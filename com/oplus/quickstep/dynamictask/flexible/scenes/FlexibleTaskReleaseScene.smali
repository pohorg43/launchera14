.class public Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene"


# instance fields
.field private wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-void
.end method

.method public static final synthetic access$getThumbnailByCaptureLayers(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;Ll4/d;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getThumbnailByCaptureLayers(Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getThumbnailByCaptureLayers(Ll4/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lm7/y0;->b:Lm7/f0;

    new-instance v1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$getThumbnailByCaptureLayers$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$getThumbnailByCaptureLayers$2;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;Ll4/d;)V

    invoke-static {v0, v1, p1}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getThumbnailBySnapshot()Landroid/graphics/Bitmap;
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RFT_ReleaseScene"

    const/4 v3, -0x1

    if-ne v0, v3, :cond_12

    const-string p0, "getThumbnailBySnapshot(), flexibleTaskId -1."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_12
    :try_start_12
    const-string v0, "getThumbnailBySnapshot(), START"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_74

    new-instance v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThumbnailBySnapshot(), END, taskSnapshot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", width="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", rotation="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", insets="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    return-object p0

    :cond_74
    const-string p0, "getThumbnailBySnapshot(), END, taskSnapshot null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_12 .. :try_end_79} :catchall_7a

    return-object v1

    :catchall_7a
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8a

    const-string v0, "getThumbnailBySnapshot(), e="

    invoke-static {v0, p0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8a
    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public final getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-object p0
.end method

.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release(), attachedTaskView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFT_ReleaseScene"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    goto :goto_30

    :cond_2f
    move-object v0, v1

    :goto_30
    if-nez v0, :cond_34

    const/4 p0, 0x0

    return p0

    :cond_34
    iget-object p1, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "recentsView.mActivity"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;

    invoke-direct {v6, p0, v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;Lcom/android/quickstep/views/TaskThumbnailView;Ll4/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 p0, 0x1

    return p0
.end method

.method public final setWrapper(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-void
.end method

.method public showThumbnailView()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    instance-of v2, v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v2, :cond_14

    check-cast v1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_50

    const-string v2, "showThumbnailView(), alpha="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", dim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->getOnlyDrawDimming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RFT_ReleaseScene"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getThumbnailHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_44
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_50
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleView()Lcom/oplus/flexiblewindow/FlexibleTaskView;

    move-result-object p0

    if-nez p0, :cond_59

    goto :goto_61

    :cond_59
    new-instance v1, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p0, v1}, Lcom/oplus/flexiblewindow/FlexibleTaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_61
    return-void
.end method
