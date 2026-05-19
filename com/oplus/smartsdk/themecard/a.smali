.class public final synthetic Lcom/oplus/smartsdk/themecard/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/smartsdk/themecard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/a;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/oplus/smartsdk/themecard/a;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Z)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/smartsdk/themecard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/a;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/oplus/smartsdk/themecard/a;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/smartsdk/themecard/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/a;->b:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/oplus/smartsdk/themecard/a;->c:Z

    invoke-static {v0, p0}, Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;->g(Ljava/lang/Object;Z)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/utrace/hlog/ULoggerImpl;

    iget-boolean p0, p0, Lcom/oplus/smartsdk/themecard/a;->c:Z

    invoke-static {v0, p0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->c(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
