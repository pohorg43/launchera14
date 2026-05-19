.class public final synthetic Lcom/android/wm/shell/pip/phone/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ZII)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/pip/phone/n;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/wm/shell/pip/phone/n;->b:Z

    iput p2, p0, Lcom/android/wm/shell/pip/phone/n;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/phone/n;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/n;->b:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/n;->c:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->i(ZILcom/android/wm/shell/pip/phone/PipController;)V

    return-void

    :goto_10
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/n;->b:Z

    iget p0, p0, Lcom/android/wm/shell/pip/phone/n;->c:I

    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->e(ZILcom/android/wm/shell/pip/phone/PipController;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
