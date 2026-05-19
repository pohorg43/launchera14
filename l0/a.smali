.class public final synthetic Ll0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/views/FloatingIconView;Landroidx/core/util/Consumer;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Ll0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll0/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Ll0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll0/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget v0, p0, Ll0/a;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Ll0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object p0, p0, Ll0/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/splitscreen/SplitScreenUtils;->a(Lcom/coui/appcompat/tooltips/COUIToolTips;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Ll0/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/FloatingIconView;

    iget-object p0, p0, Ll0/a;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/core/util/Consumer;

    invoke-static {v0, p0, p1, p2}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl$createHomeAnimationFactory$3;->b(Lcom/android/launcher3/views/FloatingIconView;Landroidx/core/util/Consumer;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
