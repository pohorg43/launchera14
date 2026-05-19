.class public final synthetic Lq0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .registers 3

    iput p2, p0, Lq0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lq0/a;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lq0/a;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/wm/shell/flexiblewindow/FlexibleWindowTransitionHandler;->b(Ljava/util/ArrayList;)V

    return-void

    :goto_c
    iget-object p0, p0, Lq0/a;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/wm/shell/putt/OnePuttTransitionHandler;->b(Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
