.class public final synthetic Lcom/android/quickstep/interaction/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/interaction/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AnimatedTaskbarView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/interaction/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/SandboxModeTutorialController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/interaction/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/interaction/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/interaction/c;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/SandboxModeTutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/SandboxModeTutorialController;->l(Lcom/android/quickstep/interaction/SandboxModeTutorialController;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->j(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AllSetActivity$1;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity$1;->a(Lcom/android/quickstep/interaction/AllSetActivity$1;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/quickstep/interaction/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AnimatedTaskbarView;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/AnimatedTaskbarView;->animateDisappearanceToBottom()V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
