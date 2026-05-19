.class public final synthetic Lcom/android/launcher3/model/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/model/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/model/u0;->a:I

    packed-switch v0, :pswitch_data_48

    goto :goto_3a

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->a(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13  #0x2
    iget-object v0, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusModelWriter;->p(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x1
    iget-object v0, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/OplusModelWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/OplusModelWriter;->v(Lcom/android/launcher3/model/OplusModelWriter;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :pswitch_2d  #0x0
    iget-object v0, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/ModelWriter;

    iget-object p0, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/model/ModelWriter;->i(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object p0

    return-object p0

    :goto_3a
    iget-object v0, p0, Lcom/android/launcher3/model/u0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object p0, p0, Lcom/android/launcher3/model/u0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->t(Lcom/android/quickstep/AbsSwipeUpHandler;Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_20  #00000001
        :pswitch_13  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
