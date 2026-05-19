.class public final synthetic Lcom/android/launcher3/l3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/l3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/l3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/l3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/l3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/l3;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/l3;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/l3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/l3;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/l3;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/l3;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_20

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/l3;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/l3;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->H(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_13  #0x0
    iget-object v0, p0, Lcom/android/launcher3/l3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object p0, p0, Lcom/android/launcher3/l3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->a(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_20
    iget-object v0, p0, Lcom/android/launcher3/l3;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/OplusWorkspace;

    iget-object p0, p0, Lcom/android/launcher3/l3;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->m0(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
