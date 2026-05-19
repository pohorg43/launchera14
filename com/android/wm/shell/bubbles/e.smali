.class public final synthetic Lcom/android/wm/shell/bubbles/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 12

    iget v0, p0, Lcom/android/wm/shell/bubbles/e;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/e;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/BubbleController;->l(Lcom/android/wm/shell/bubbles/BubbleController;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void

    :goto_14
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/e;->b:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->s(Lcom/android/wm/shell/splitscreen/StageCoordinator;IIILandroid/window/DisplayAreaInfo;Landroid/window/WindowContainerTransaction;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
