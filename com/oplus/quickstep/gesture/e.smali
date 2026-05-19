.class public final synthetic Lcom/oplus/quickstep/gesture/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

.field public final synthetic c:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;I)V
    .registers 7

    iput p6, p0, Lcom/oplus/quickstep/gesture/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/e;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/e;->c:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput p3, p0, Lcom/oplus/quickstep/gesture/e;->d:I

    iput p4, p0, Lcom/oplus/quickstep/gesture/e;->e:I

    iput-object p5, p0, Lcom/oplus/quickstep/gesture/e;->f:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/gesture/e;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/e;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/e;->c:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v2, p0, Lcom/oplus/quickstep/gesture/e;->d:I

    iget v3, p0, Lcom/oplus/quickstep/gesture/e;->e:I

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/e;->f:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->K0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :goto_14
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/e;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/e;->c:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget v2, p0, Lcom/oplus/quickstep/gesture/e;->d:I

    iget v3, p0, Lcom/oplus/quickstep/gesture/e;->e:I

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/e;->f:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->i0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
