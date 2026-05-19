.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene_ClearAll"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;->release$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;)V

    return-void
.end method

.method private static final release$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

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

    const-string v0, "RFT_ReleaseScene_ClearAll"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->showThumbnailView()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object p1

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object p1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    if-nez p1, :cond_3a

    const/4 p0, 0x0

    return p0

    :cond_3a
    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    new-instance v0, Lcom/android/quickstep/util/n;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneClearAll;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v1
.end method
