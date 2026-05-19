.class public final synthetic Lcom/android/quickstep/views/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$12;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/views/a0;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/views/a0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/views/a0;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/a0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView$12;

    iget p0, p0, Lcom/android/quickstep/views/a0;->c:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView$12;->c(Lcom/android/quickstep/views/RecentsView$12;ILjava/lang/Boolean;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/quickstep/views/a0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    iget p0, p0, Lcom/android/quickstep/views/a0;->c:I

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/TaskView;->b(Lcom/android/quickstep/views/TaskView;ILcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
