.class public final synthetic Landroidx/room/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/room/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/l0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorStatement;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Landroidx/room/l0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/l0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Landroidx/room/l0;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Landroidx/room/l0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/QueryInterceptorDatabase;

    invoke-static {p0}, Landroidx/room/QueryInterceptorDatabase;->l(Landroidx/room/QueryInterceptorDatabase;)V

    return-void

    :goto_e
    iget-object p0, p0, Landroidx/room/l0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/room/QueryInterceptorStatement;

    invoke-static {p0}, Landroidx/room/QueryInterceptorStatement;->b(Landroidx/room/QueryInterceptorStatement;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
