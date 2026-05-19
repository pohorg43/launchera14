.class public final synthetic Lcom/android/launcher3/card/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/card/CardPermissionManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/card/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/card/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/card/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/card/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/card/a;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/card/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/CardPermissionManager;

    iget-object p0, p0, Lcom/android/launcher3/card/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/card/CardPermissionManager;->b(Lcom/android/launcher3/card/CardPermissionManager;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher3/card/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object p0, p0, Lcom/android/launcher3/card/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/window/WindowContainerToken;

    check-cast p2, Landroid/view/SurfaceControl;

    invoke-static {v0, p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->e(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
