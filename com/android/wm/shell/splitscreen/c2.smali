.class public final synthetic Lcom/android/wm/shell/splitscreen/c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/c2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/c2;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/c2;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/c2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/c2;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/c2;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;Z)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/c2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/c2;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/c2;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/c2;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/c2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/c2;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->d(Lcom/android/wm/shell/splitscreen/DividerOrientationController;Z)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/c2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/c2;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$4;Z)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/c2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/c2;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->m(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
