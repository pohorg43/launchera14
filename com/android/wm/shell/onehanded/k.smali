.class public final synthetic Lcom/android/wm/shell/onehanded/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/onehanded/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/onehanded/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/onehanded/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/window/DisplayAreaInfo;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/onehanded/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/onehanded/k;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2a

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    check-cast p0, Landroid/window/DisplayAreaInfo;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->b(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/window/DisplayAreaInfo;)V

    return-void

    :pswitch_12  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;->b(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$1;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    return-void

    :pswitch_1e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedEventCallback;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;->d(Lcom/android/wm/shell/onehanded/OneHandedController$OneHandedImpl;Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    return-void

    :goto_2a
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/k;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->a(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_12  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
