.class public final synthetic Lcom/android/quickstep/views/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView$16;I)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/views/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/s;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/views/s;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;II)V
    .registers 4

    iput p3, p0, Lcom/android/quickstep/views/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/s;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/quickstep/views/s;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/s;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/views/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget p0, p0, Lcom/android/quickstep/views/s;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->q(Lcom/android/quickstep/views/RecentsView;I)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/quickstep/views/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget p0, p0, Lcom/android/quickstep/views/s;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView;->F(Lcom/android/quickstep/views/RecentsView;I)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/quickstep/views/s;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView$16;

    iget p0, p0, Lcom/android/quickstep/views/s;->c:I

    invoke-static {v0, p0}, Lcom/android/quickstep/views/RecentsView$16;->a(Lcom/android/quickstep/views/RecentsView$16;I)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
