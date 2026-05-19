.class public final synthetic Lcom/android/quickstep/views/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/OplusRecentsViewImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusRecentsViewImpl;I)V
    .registers 3

    iput p2, p0, Lcom/android/quickstep/views/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/g;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/views/g;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/g;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->d0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/android/quickstep/views/g;->b:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->l0(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
