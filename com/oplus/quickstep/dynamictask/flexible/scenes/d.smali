.class public final synthetic Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;

.field public final synthetic c:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

.field public final synthetic d:Lcom/android/quickstep/views/OplusRecentsViewImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->c:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->b:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->d:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->b:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->c:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iput-object p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->d:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->b:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->c:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->d:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->a(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->c:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->b:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;->d:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->c(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
