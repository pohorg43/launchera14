.class public final synthetic Lcom/android/wm/shell/windowdecor/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/graphics/Region;


# direct methods
.method public synthetic constructor <init>(ILandroid/graphics/Region;I)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/windowdecor/m;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/windowdecor/m;->b:I

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/m;->c:Landroid/graphics/Region;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/windowdecor/m;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget v0, p0, Lcom/android/wm/shell/windowdecor/m;->b:I

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/m;->c:Landroid/graphics/Region;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopModeController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->c(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopModeController;)V

    return-void

    :goto_10
    iget v0, p0, Lcom/android/wm/shell/windowdecor/m;->b:I

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/m;->c:Landroid/graphics/Region;

    check-cast p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$TaskCornersListenerImpl;->d(ILandroid/graphics/Region;Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
