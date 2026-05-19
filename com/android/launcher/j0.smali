.class public final synthetic Lcom/android/launcher/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/OplusPagedViewImpl;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/OplusPagedViewImpl;II)V
    .registers 4

    iput p3, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Lcom/android/launcher/OplusPagedViewImpl;

    iput p2, p0, Lcom/android/launcher/j0;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher/j0;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/j0;->b:Lcom/android/launcher/OplusPagedViewImpl;

    iget p0, p0, Lcom/android/launcher/j0;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/OplusPagedViewImpl;->l(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher/j0;->b:Lcom/android/launcher/OplusPagedViewImpl;

    iget p0, p0, Lcom/android/launcher/j0;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher/OplusPagedViewImpl;->n(Lcom/android/launcher/OplusPagedViewImpl;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
