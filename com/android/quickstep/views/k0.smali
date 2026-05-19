.class public final synthetic Lcom/android/quickstep/views/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/RunnableList;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/views/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskMenuView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/views/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/k0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/k0;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    invoke-static {p0}, Lcom/android/quickstep/views/TaskView$14;->a(Ljava/util/function/Consumer;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/quickstep/views/k0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/TaskMenuView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpen()V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
