.class public final synthetic Lcom/android/wm/shell/compatui/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/compatui/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/compatui/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/compatui/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/compatui/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/compatui/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/compatui/z;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    invoke-static {p0}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->b(Lcom/android/wm/shell/compatui/CompatUIControllerExt;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-static {p0}, Lcom/android/wm/shell/compatui/CompatUIController;->a(Lcom/android/wm/shell/compatui/CompatUIController;)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;

    invoke-static {p0}, Lcom/android/wm/shell/compatui/RestartDialogWindowManager;->i(Lcom/android/wm/shell/compatui/RestartDialogWindowManager;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;

    invoke-static {p0}, Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;->d(Lcom/android/wm/shell/compatui/ReachabilityEduWindowManager;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/wm/shell/compatui/z;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/wm/shell/compatui/DialogAnimationController;->b(Landroid/view/View;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
