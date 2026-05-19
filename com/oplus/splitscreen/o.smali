.class public final synthetic Lcom/oplus/splitscreen/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;III)V
    .registers 5

    iput p4, p0, Lcom/oplus/splitscreen/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/o;->b:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput p2, p0, Lcom/oplus/splitscreen/o;->c:I

    iput p3, p0, Lcom/oplus/splitscreen/o;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/splitscreen/o;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/splitscreen/o;->b:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/oplus/splitscreen/o;->c:I

    iget p0, p0, Lcom/oplus/splitscreen/o;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/StackDividerService;->b(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/oplus/splitscreen/o;->b:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v1, p0, Lcom/oplus/splitscreen/o;->c:I

    iget p0, p0, Lcom/oplus/splitscreen/o;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/StackDividerService;->a(Lcom/android/wm/shell/splitscreen/SplitScreenController;II)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
