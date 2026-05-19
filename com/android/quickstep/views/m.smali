.class public final synthetic Lcom/android/quickstep/views/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;I)V
    .registers 3

    iput p2, p0, Lcom/android/quickstep/views/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/m;->b:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/m;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/m;->b:Lcom/android/quickstep/views/OplusTaskViewImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->q(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/quickstep/views/m;->b:Lcom/android/quickstep/views/OplusTaskViewImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->t(Lcom/android/quickstep/views/OplusTaskViewImpl;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
