.class public final synthetic Lcom/android/quickstep/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/i0;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/i0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/AbsSwipeUpHandler;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->a0(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Boolean;)V

    return-void

    :pswitch_10  #0x0
    iget-object p0, p0, Lcom/android/quickstep/i0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->b(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :goto_1a
    iget-object p0, p0, Lcom/android/quickstep/i0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/recents/model/Task;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {p0, p1}, Lcom/android/quickstep/TaskThumbnailCache;->a(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
