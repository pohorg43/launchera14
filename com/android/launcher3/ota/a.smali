.class public final synthetic Lcom/android/launcher3/ota/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ota/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/ota/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/ota/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/ota/a;->g:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/Rect;Lcom/android/quickstep/util/RectFSpringAnim;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 10

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ota/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/ota/a;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/ota/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/launcher3/ota/a;->g:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget v0, p0, Lcom/android/launcher3/ota/a;->a:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_32

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher/mode/LauncherMode;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/util/IntArray;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/LauncherAppState;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->g:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {v1 .. v8}, Lcom/android/launcher3/ota/AddCardUtils;->c(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void

    :goto_32
    iget-object v0, p0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/views/FloatingIconView;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher3/ota/a;->g:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/android/quickstep/util/RectFSpringAnim;

    iget-object p0, p0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static/range {v1 .. v8}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->f(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/launcher3/views/FloatingIconView;Landroid/view/View;Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;Landroid/graphics/Rect;Lcom/android/quickstep/util/RectFSpringAnim;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
