.class public final synthetic Lcom/android/launcher3/model/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/model/ModelWriter;

.field public final synthetic c:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/model/t0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/t0;->b:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/t0;->c:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/model/t0;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/t0;->b:Lcom/android/launcher3/model/ModelWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/t0;->c:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->l(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/model/t0;->b:Lcom/android/launcher3/model/ModelWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/t0;->c:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->e(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
