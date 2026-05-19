.class public final synthetic Lcom/android/launcher3/model/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/t;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/t;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/t;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    return-object p0

    :goto_11
    iget-object p0, p0, Lcom/android/launcher3/model/t;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
