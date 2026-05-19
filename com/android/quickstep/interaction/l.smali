.class public final synthetic Lcom/android/quickstep/interaction/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/interaction/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/interaction/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/interaction/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/interaction/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/interaction/l;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {p0}, Lcom/android/quickstep/interaction/AllSetActivity;->d(Lcom/android/quickstep/interaction/AllSetActivity;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->continueTutorial()V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialController;->a(Lcom/android/quickstep/interaction/TutorialController;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/quickstep/interaction/l;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-static {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->c(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
