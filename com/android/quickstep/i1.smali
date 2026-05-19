.class public final synthetic Lcom/android/quickstep/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/i1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i1;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/i1;->c:Z

    iput-boolean p3, p0, Lcom/android/quickstep/i1;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/i1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i1;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/i1;->c:Z

    iput-boolean p3, p0, Lcom/android/quickstep/i1;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/i1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/i1;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/quickstep/i1;->c:Z

    iput-boolean p3, p0, Lcom/android/quickstep/i1;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/i1;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/i1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    iget-boolean v1, p0, Lcom/android/quickstep/i1;->c:Z

    iget-boolean p0, p0, Lcom/android/quickstep/i1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->g(Lcom/android/quickstep/TouchInteractionService$TISBinder;ZZ)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/quickstep/i1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean v1, p0, Lcom/android/quickstep/i1;->c:Z

    iget-boolean p0, p0, Lcom/android/quickstep/i1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationController;->m(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/quickstep/i1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;

    iget-boolean v1, p0, Lcom/android/quickstep/i1;->c:Z

    iget-boolean p0, p0, Lcom/android/quickstep/i1;->d:Z

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;->c(Lcom/android/wm/shell/recents/RecentsTransitionHandler$RecentsController;ZZ)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
