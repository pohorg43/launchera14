.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene_ContentProtected"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;->release$lambda$2$lambda$1(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;->release$lambda$2$lambda$1$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;->release$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    return-void
.end method

.method private static final release$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getThumbnailBySnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/f1;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/quickstep/f1;-><init>(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final release$lambda$2$lambda$1(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;)V
    .registers 5

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RFT_ReleaseScene_ContentProtected"

    const-string v1, "release(), refresh."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1a

    iget-object v0, p1, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_18

    goto :goto_1a

    :cond_18
    iput-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setWaitNextDraw(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const-wide/16 v0, 0x8

    const-string p0, "RFT_ReleaseScene_ContentProtected#refresh"

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    new-instance p0, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-static {p1, p0}, Lcom/android/quickstep/OplusViewUtils;->postNextDraw(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_3d

    invoke-direct {p2, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;->startProtectedAnimation(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    :cond_3d
    return-void
.end method

.method private static final release$lambda$2$lambda$1$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;->startProtectedAnimation(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    return-void
.end method

.method private final startProtectedAnimation(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->isContentProtection()Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onContentProtectStateChanged(ZZ)V

    return-void
.end method


# virtual methods
.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "release(), attachedTaskView="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RFT_ReleaseScene_ContentProtected"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    goto :goto_34

    :cond_33
    move-object p1, v0

    :goto_34
    instance-of v1, p1, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_3b

    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    :cond_3b
    if-nez v0, :cond_3f

    const/4 p0, 0x0

    return p0

    :cond_3f
    sget-object p1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneContentProtected;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
