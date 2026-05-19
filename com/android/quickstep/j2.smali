.class public final synthetic Lcom/android/quickstep/j2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/j2;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/j2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/j2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j2;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/j2;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/j2;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_22

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/j2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/quickstep/j2;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->B(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void

    :pswitch_14  #0x0
    iget-object v0, p0, Lcom/android/quickstep/j2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/android/quickstep/j2;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/TaskViewUtils$1;->a(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;Ljava/lang/Boolean;)V

    return-void

    :goto_22
    iget-object v0, p0, Lcom/android/quickstep/j2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/quickstep/j2;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->e(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
