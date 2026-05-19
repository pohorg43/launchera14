.class public final synthetic Lcom/android/quickstep/interaction/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/interaction/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/animation/AnimatorSet;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/interaction/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/interaction/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/interaction/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/interaction/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/interaction/a;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateAppearanceFromBottom()V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->g(Lcom/android/quickstep/interaction/GestureSandboxActivity;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AllSetActivity$1;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity$1;->b(Lcom/android/quickstep/interaction/AllSetActivity$1;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/quickstep/interaction/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
