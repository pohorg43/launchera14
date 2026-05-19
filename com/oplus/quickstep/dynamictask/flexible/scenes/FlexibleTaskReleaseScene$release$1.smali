.class final Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.oplus.quickstep.dynamictask.flexible.scenes.FlexibleTaskReleaseScene$release$1"
    f = "FlexibleTaskReleaseScene.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;Lcom/android/quickstep/views/TaskThumbnailView;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;",
            "Lcom/android/quickstep/views/TaskThumbnailView;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->invokeSuspend$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-direct {p1, v0, p0, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;Lcom/android/quickstep/views/TaskThumbnailView;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_34

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    sget-object p1, Lm7/y0;->b:Lm7/f0;

    new-instance v1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1$captureBimap$1;

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1$captureBimap$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;Ll4/d;)V

    iput v2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->label:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_44

    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v1, :cond_3f

    goto :goto_41

    :cond_3f
    iput-object p1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :goto_41
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    :cond_44
    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    invoke-virtual {p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->showThumbnailView()V

    iget-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->$thumbnailView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene$release$1;->this$0:Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/a;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
