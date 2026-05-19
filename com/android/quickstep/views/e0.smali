.class public final synthetic Lcom/android/quickstep/views/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/FloatingWidgetView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/views/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/views/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/views/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/e0;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->o(Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->j0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/FloatingWidgetView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/FloatingWidgetView;->fastFinish()V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->a(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/quickstep/views/e0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView;->f(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
